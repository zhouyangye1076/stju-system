DIR_BUILD		?= $(CURDIR)/build
DIR_SIM			?= $(CURDIR)/sim
DIR_SRC			?= $(CURDIR)/submit
DIR_INCLUDE		?= $(CURDIR)/include

SIM_BUILD		?= $(DIR_BUILD)/verilate

# part for verilator
VERILATOR_TOP		:= Testbench
VERILATOR_SRCS		=  $(shell find $(DIR_SIM) -name "*.v" -o -name "*.sv" -o -name "*.cpp") \
					   $(shell find $(DIR_SRC) -name "*.v" -o -name "*.sv")

VERILATOR_TFLAGS	:= -Wno-STMTDLY --timescale 1ns/10ps --trace
VERILATOR_FLAGS		:= --cc --exe  --main --timing\
						--Mdir $(SIM_BUILD) --top-module $(VERILATOR_TOP)\
						-o $(VERILATOR_TOP) -I$(DIR_INCLUDE) -I$(DIR_INCLUDE_CUSTOM)\
						-CFLAGS "-DVL_DEBUG -DTOP=${VERILATOR_TOP} -std=c++17" 
VERILATOR_DEFINE	:= +define+TOP_DIR=\"$(SIM_BUILD)\" +define+VERILATE

verilate:$(VERILATOR_TOP)
	cd $(SIM_BUILD); ./$(VERILATOR_TOP)

$(VERILATOR_TOP):$(VERILATOR_SRCS)
	mkdir -p $(SIM_BUILD)
	verilator $(VERILATOR_TFLAGS) $(VERILATOR_FLAGS) $(VERILATOR_SRCS) $(VERILATOR_DEFINE)
	make -C $(SIM_BUILD) -f V$(VERILATOR_TOP).mk $(VERILATOR_TOP)

wave:
	gtkwave $(SIM_BUILD)/$(VERILATOR_TOP).vcd

clean:
	rm -rf $(SIM_BUILD)