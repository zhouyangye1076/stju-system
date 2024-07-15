DIR_BUILD		:= $(CURDIR)/build
DIR_PATCH		:= $(CURDIR)/patch

# compile for the ip folder
SPIKE_DIR		:= $(CURDIR)/riscv-isa-cosim
SPIKE_SRC		:= $(shell find $(SPIKE_DIR) -name "*.cc" -o -name "*.h" -o -name "*.c")
SPIKE_LIB		:= $(addprefix $(SPIKE_BUILD)/,libcosim.a libriscv.a libdisasm.a libsoftfloat.a libfesvr.a libfdt.a)
SPIKE_INCLUDE	:= $(SPIKE_DIR) $(SPIKE_DIR)/cosim $(SPIKE_DIR)/fdt $(SPIKE_DIR)/fesvr \
			       $(SPIKE_DIR)/riscv $(SPIKE_DIR)/softfloat $(SPIKE_BUILD)
IP_BUILD		:= $(DIR_BUILD)/ip
DIR_COSIM_IP	:= $(CURDIR)/../src/project/ip

export LD_LIBRARY_PATH=$(IP_BUILD)
$(IP_BUILD)/patch:
	mkdir -p $(IP_BUILD)
	cd $(SPIKE_DIR) ; git apply $(DIR_PATCH)/riscv-isa-cosim/*
	touch $(IP_BUILD)/patch

$(IP_BUILD)/Makefile:
	mkdir -p $(IP_BUILD)
	cd $(IP_BUILD); $(SPIKE_DIR)/configure --prefix=$(DIR_COSIM_IP)

ip_gen:$(SPIKE_SRC) $(IP_BUILD)/Makefile $(IP_BUILD)/patch
	mkdir -p $(DIR_COSIM_IP)
	make -C $(IP_BUILD) -j$(shell nproc) $(notdir $(SPIKE_LIB))
	make -C $(IP_BUILD) install

#compiler for verilator
VLT_DIR 	:= $(CURDIR)/verilator
VLT_BUILD	:= $(DIR_BUILD)/verilator
$(VLT_BUILD)/Makefile:
	mkdir -p $(VLT_BUILD)
	cd $(VLT_DIR); autoconf
	cd $(VLT_BUILD); $(VLT_DIR)/configure 

verilator:$(VLT_BUILD)/Makefile $(VLT_DIR)
	make -C $(VLT_BUILD) -j$(shell nproc)
	sudo make -C $(VLT_BUILD) install
	verilator --version

