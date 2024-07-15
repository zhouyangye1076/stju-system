DIR_BUILD		?= $(CURDIR)/build
SIM_BUILD		?= $(DIR_BUILD)/verilate

DIR_SIM			?= $(CURDIR)/sim
DIR_COSIM_IP	?= $(CURDIR)/ip
DIR_INCLUDE		?= $(CURDIR)/include
DIR_GENERAL		?= $(CURDIR)/general
DIR_SRC			?= $(CURDIR)/submit

DIR_TEST		?= $(CURDIR)/testcode
DIR_TESTCASE	?= $(DIR_TEST)/testcase
DIR_UARTCASE	?= $(DIR_TEST)/uart

# part for verilator
VERILATOR_TOP		:= Testbench
VERILATOR_SRCS		=  $(shell find $(DIR_SIM) -name "*.v" -o -name "*.sv" -o -name "*.cpp") \
					   $(shell find $(DIR_SRC) -name "*.v" -o -name "*.sv") \
					   $(shell find $(DIR_GENERAL) -name "*v" -o -name "*.sv")

VERILATOR_TFLAGS	:= -Wno-STMTDLY --timescale 1ns/10ps --trace
VERILATOR_FLAGS		:= --cc --exe  --main --timing\
						--Mdir $(SIM_BUILD) --top-module $(VERILATOR_TOP) \
						-o $(VERILATOR_TOP) -I$(DIR_INCLUDE) -I$(CUSTOM_INCLUDE)\
						-CFLAGS "-DVL_DEBUG -DTOP=${VERILATOR_TOP} -std=c++17 \
						-iquote$(DIR_COSIM_IP)/include/riscv -iquote$(DIR_COSIM_IP)/include/cosim -iquote$(DIR_COSIM_IP)/include/fesvr" \
						-LDFLAGS "-L$(DIR_COSIM_IP)/lib  -l:libcosim.a -l:libriscv.a -l:libdisasm.a -l:libsoftfloat.a -l:libfdt.a -l:libfesvr.a"
VERILATOR_DEFINE	:= +define+TOP_DIR=\"$(SIM_BUILD)\" +define+VERILATE

TESTCASE ?= sample

verilate:$(VERILATOR_TOP)
	make -C $(DIR_TESTCASE) gen
	cp $(DIR_TESTCASE)/$(TESTCASE)/*.elf $(SIM_BUILD)/testcase.elf
	cp $(DIR_TESTCASE)/$(TESTCASE)/*.hex $(SIM_BUILD)/testcase.hex
	cd $(SIM_BUILD); ./$(VERILATOR_TOP)

board_sim:$(VERILATOR_TOP) 
	make -C $(DIR_TESTCASE) board
	cp $(DIR_TESTCASE)/$(TESTCASE)/*.elf $(SIM_BUILD)/testcase.elf
	cp $(DIR_TESTCASE)/$(TESTCASE)/*.hex $(SIM_BUILD)/testcase.hex
	cd $(SIM_BUILD); ./$(VERILATOR_TOP)

uart:$(VERILATOR_TOP) 
	make -C $(DIR_UARTCASE)
	cp $(DIR_UARTCASE)/*.elf $(SIM_BUILD)/testcase.elf
	cp $(DIR_UARTCASE)/*.hex $(SIM_BUILD)/testcase.hex
	cd $(SIM_BUILD); ./$(VERILATOR_TOP)
	
$(VERILATOR_TOP):$(VERILATOR_SRCS) $(DIR_COSIM_IP)
	mkdir -p $(SIM_BUILD)
	verilator $(VERILATOR_TFLAGS) $(VERILATOR_FLAGS) $(VERILATOR_SRCS) $(VERILATOR_DEFINE)
	make -C $(SIM_BUILD) -f V$(VERILATOR_TOP).mk $(VERILATOR_TOP)

wave:
	gtkwave $(SIM_BUILD)/$(VERILATOR_TOP).vcd

clean:
	rm -rf $(SIM_BUILD)