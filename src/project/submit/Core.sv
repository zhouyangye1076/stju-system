`include "core_struct.vh"
`include "mem_ift.vh"
module Core (
    input clk,
    input rst,

    Mem_ift.Master imem_ift,
    Mem_ift.Master dmem_ift,
    output cosim_valid,
    output CorePack::CoreInfo cosim_core_info
);

    logic stall;

    import CorePack::*;
    
    logic npc_sel;
    logic br_taken;
    addr_t alu_res;
    addr_t pc;
    data_t pc_4;
    addr_t next_pc;
    PC pc_unit (
        .clk(clk),
        .rst(rst),
        .stall(stall),
        .npc_sel(npc_sel),
        .br_taken(br_taken),
        .alu_res(alu_res),
        .pc(pc),
        .pc_4(pc_4),
        .next_pc(next_pc)
    );

    inst_t inst;
    always_ff@(posedge clk or posedge rst)begin
        if(rst) inst <= 32'b0;
        else if(imem_ift.r_reply_valid & imem_ift.r_reply_ready)begin
            inst <= pc[2]?imem_ift.r_reply_bits.rdata[63:32]:imem_ift.r_reply_bits.rdata[31:0];
        end
    end

    opcode_t opcode;
    assign opcode=inst[6:0];
    reg_ind_t rd;
    assign rd=inst[11:7];
    funct3_t funct3;
    assign funct3=inst[14:12];
    reg_ind_t rs1;
    assign rs1=inst[19:15];
    reg_ind_t rs2;
    assign rs2=inst[24:20];
    funct7_t funct7;
    assign funct7=inst[31:25];
    
    logic we_reg;
    logic we_mem;
    logic re_mem;
    imm_op_enum immgen_op;
    alu_op_enum alu_op;
    cmp_op_enum cmp_op;
    alu_asel_op_enum alu_asel_op;
    alu_bsel_op_enum alu_bsel_op;
    wb_sel_op_enum wb_sel_op;
    mem_op_enum mem_op;
    controller controller_unit (
        .inst(inst),
        .we_reg(we_reg),
        .we_mem(we_mem),
        .re_mem(re_mem),
        .npc_sel(npc_sel),
        .immgen_op(immgen_op),
        .alu_op(alu_op),
        .cmp_op(cmp_op),
        .alu_asel(alu_asel_op),
        .alu_bsel(alu_bsel_op),
        .wb_sel(wb_sel_op),
        .mem_op(mem_op)
    );

    data_t wb_val;
    data_t read_data_1;
    data_t read_data_2;
    RegFile regfile_unit (
        .clk(clk),
        .rst(rst),
        .we(we_reg & ~stall),
        .read_addr_1(rs1),
        .read_addr_2(rs2),
        .write_addr(rd),
        .write_data(wb_val),
        .read_data_1(read_data_1),
        .read_data_2(read_data_2)
    );

    data_t imm;
    ImmGen immgen_unit (
        .inst(inst),
        .immgen_op(immgen_op),
        .imm(imm)
    );

    data_t a_val;
    ALU_asel alu_asel_unit (
        .pc(pc),
        .read_data_1(read_data_1),
        .alu_asel(alu_asel_op),
        .a(a_val)
    );

    data_t b_val;
    ALU_bsel alu_bsel_unit (
        .imm(imm),
        .read_data_2(read_data_2),
        .alu_bsel(alu_bsel_op),
        .b(b_val)
    );

    ALU alu_unit (
        .a(a_val),
        .b(b_val),
        .alu_op(alu_op),
        .res(alu_res)
    );

    Cmp cmp_unit (
        .a(read_data_1),
        .b(read_data_2),
        .cmp_op(cmp_op),
        .cmp_res(br_taken)
    );

    data_t data_package;
    DataPkg data_pkg_unit (
        .data(read_data_2),
        .mem_op(mem_op),
        .data_package(data_package)
    );  

    mask_t mask_package;
    MaskGen mask_gen_unit (
        .address(alu_res[2:0]),
        .mem_op(mem_op),
        .we_mem(we_mem),
        .mem_mask(mask_package)
    );

    data_t data_trunc;
    DataTrunc data_trunc_unit (
        .mem_data(dmem_ift.r_reply_bits.rdata),
        .mem_op(mem_op),
        .address(alu_res[2:0]),
        .data_trunc(data_trunc)
    );

    WB_sel wb_sel_unit (
        .alu_res(alu_res),
        .mem_trunc(data_trunc),
        .pc_4(pc_4),
        .wb_sel(wb_sel_op),
        .data_wb(wb_val)
    );


    MultiFSM multi_fsm(
        .clk(clk),
        .rst(rst),
        .imem_ift(imem_ift),
        .dmem_ift(dmem_ift),
        .we_mem(we_mem),
        .re_mem(re_mem),
        .pc(pc),
        .alu_res(alu_res),
        .data_package(data_package),
        .mask_package(mask_package),
        .stall(stall)
    );

    assign cosim_valid = ~stall;
    assign cosim_core_info.pc        = pc;
    assign cosim_core_info.inst      = {32'b0,inst};   
    assign cosim_core_info.rs1_id    = {59'b0, rs1};
    assign cosim_core_info.rs1_data  = read_data_1;
    assign cosim_core_info.rs2_id    = {59'b0, rs2};
    assign cosim_core_info.rs2_data  = read_data_2;
    assign cosim_core_info.alu       = alu_res;
    assign cosim_core_info.mem_addr  = dmem_ift.r_request_bits.raddr;
    assign cosim_core_info.mem_we    = {63'b0, dmem_ift.w_request_valid};
    assign cosim_core_info.mem_wdata = dmem_ift.w_request_bits.wdata;
    assign cosim_core_info.mem_rdata = dmem_ift.r_reply_bits.rdata;
    assign cosim_core_info.rd_we     = {63'b0, we_reg};
    assign cosim_core_info.rd_id     = {59'b0, rd}; 
    assign cosim_core_info.rd_data   = wb_val;
    assign cosim_core_info.br_taken  = {63'b0, br_taken};
    assign cosim_core_info.npc       = next_pc;

endmodule

module MultiFSM(
    input clk,
    input rst,
    Mem_ift.Master imem_ift,
    Mem_ift.Master dmem_ift,
    input we_mem,
    input re_mem,
    input CorePack::addr_t pc,
    input CorePack::addr_t alu_res,
    input CorePack::data_t data_package,
    input CorePack::mask_t mask_package,
    output stall
);
    import CorePack::*;

    typedef enum logic [1:0] {IF1, IF2, EXE, MEM} multi_fsm;
    multi_fsm fsm_reg, fsm_next_state;

    `Mem_Shank_Hand_Fire(imem_ift, r_request)
    `Mem_Shank_Hand_Fire(imem_ift, r_reply)
    `Mem_Shank_Hand_Fire(dmem_ift, r_request)
    `Mem_Shank_Hand_Fire(dmem_ift, r_reply)
    `Mem_Shank_Hand_Fire(dmem_ift, w_request)
    `Mem_Shank_Hand_Fire(dmem_ift, w_reply)

    always_comb begin
        case(fsm_reg)
            IF1:begin
                if(imem_ift_r_request_fire)begin
                    fsm_next_state = IF2;
                end else begin
                    fsm_next_state = fsm_reg;
                end
            end
            IF2:begin
                if(imem_ift_r_reply_fire)begin
                    fsm_next_state = EXE;
                end else begin
                    fsm_next_state = fsm_reg;
                end
            end
            EXE:begin
                if(~(we_mem|re_mem))begin
                    fsm_next_state = IF1;
                end else if(dmem_ift_r_request_fire | dmem_ift_w_request_fire)begin
                    fsm_next_state = MEM;
                end else begin
                    fsm_next_state = fsm_reg;
                end
            end
            default:begin
                if(dmem_ift_r_reply_fire | dmem_ift_w_reply_fire)begin
                    fsm_next_state = IF1;
                end else begin
                    fsm_next_state = fsm_reg;
                end
            end
        endcase
    end

    always_ff@(posedge clk or posedge rst)begin
        if(rst) fsm_reg <= IF1;
        else fsm_reg <= fsm_next_state;
    end

    assign imem_ift.r_request_valid = fsm_reg == IF1;
    assign imem_ift.r_reply_ready   = fsm_reg == IF2;
    assign imem_ift.w_request_valid = 1'b0;
    assign imem_ift.w_reply_ready   = 1'b0;
    assign dmem_ift.r_request_valid = fsm_reg == EXE & re_mem;
    assign dmem_ift.w_request_valid = fsm_reg == EXE & we_mem;
    assign dmem_ift.r_reply_ready   = fsm_reg == MEM & re_mem;
    assign dmem_ift.w_reply_ready   = fsm_reg == MEM & we_mem;

    assign imem_ift.w_request_bits = '{
        waddr:{ADDR_WIDTH{1'b0}}, 
        wdata:{DATA_WIDTH{1'b0}}, 
        wmask:{MASK_WIDTH{1'b0}}
    };
    assign imem_ift.r_request_bits = '{raddr:pc};
    assign dmem_ift.w_request_bits = '{
        waddr:alu_res, 
        wdata:data_package, 
        wmask:mask_package
    };
    assign dmem_ift.r_request_bits = '{raddr:alu_res};

    assign stall = ~(fsm_next_state == IF1);

endmodule