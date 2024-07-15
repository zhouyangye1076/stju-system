RISCV_PREFIX ?= riscv64-linux-gnu-
RISCV_GCC ?= $(RISCV_PREFIX)gcc
RISCV_GCC_OPTS ?= -march=rv64i -mabi=lp64 -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles
RISCV_OBJDUMP ?= $(RISCV_PREFIX)objdump -Mno-aliases -D
RISCV_OBJCOPY ?= $(RISCV_PREFIX)objcopy -O binary
RISCV_LD  	  ?= $(RISCV_PREFIX)ld

TESTCASE ?= rtype
TESTCASE_SOURCE := $(TESTCASE)/$(TESTCASE).S
TESTCASE_ELF := $(TESTCASE)/$(TESTCASE).elf
TESTCASE_ASM := $(TESTCASE)/$(TESTCASE).asm
TESTCASE_HEX := $(TESTCASE)/$(TESTCASE).hex
TESTCASE_OBJ := $(TESTCASE)/$(TESTCASE).o

ifeq ($(TESTCASE),rtype)
	RISCV_GCC_OPTS += -DNOBRANCH
else ifeq ($(TESTCASE),itype)
	RISCV_GCC_OPTS += -DNOBRANCH
endif

# generate a code to verilate; it will stop at the uimp instruction when pass
gen:
	$(RISCV_GCC) $(RISCV_GCC_OPTS) $(TESTCASE_SOURCE) -c -o $(TESTCASE_OBJ)
	$(RISCV_LD) -T link.ld $(TESTCASE_OBJ) -o $(TESTCASE_ELF)
	$(RISCV_OBJDUMP) $(TESTCASE_ELF) > $(TESTCASE_ASM)
	${RISCV_OBJCOPY} $(TESTCASE_ELF) tmp.bin
	od -v -An -tx8 tmp.bin > $(TESTCASE_HEX)
	rm tmp.bin $(TESTCASE_OBJ)

# generate a code to boardl it will trap in a dead loop in pass label
board:
	$(RISCV_GCC) $(RISCV_GCC_OPTS) -DBOARD $(TESTCASE_SOURCE) -c -o $(TESTCASE_OBJ) 
	$(RISCV_LD) -T link.ld $(TESTCASE_OBJ) -o $(TESTCASE_ELF)
	$(RISCV_OBJDUMP) $(TESTCASE_ELF) > $(TESTCASE_ASM)
	${RISCV_OBJCOPY} $(TESTCASE_ELF) tmp.bin
	od -v -An -tx8 tmp.bin > $(TESTCASE_HEX)
	rm tmp.bin $(TESTCASE_OBJ)