RISCV_PREFIX ?= riscv64-linux-gnu-
RISCV_GCC ?= $(RISCV_PREFIX)gcc
RISCV_GCC_OPTS ?= -march=rv64i -mabi=lp64 -mcmodel=medany -fvisibility=hidden -nostdlib -nostartfiles -DNOBRANCH 
RISCV_OBJDUMP ?= $(RISCV_PREFIX)objdump -Mno-aliases -D
RISCV_OBJCOPY ?= $(RISCV_PREFIX)objcopy -O binary
RISCV_LD  	  ?= $(RISCV_PREFIX)ld

SRC_C	=	$(shell find . -name "*.c")
SRC_S	=	$(shell find . -name "*.S")

SRC_OBJ =   $(patsubst %.c,%.o, $(SRC_C)) $(patsubst %.S,%.o, $(SRC_S))

TESTCASE = testcase
TESTCASE_ELF := $(TESTCASE).elf
TESTCASE_ASM := $(TESTCASE).asm
TESTCASE_HEX := $(TESTCASE).hex

testcase.hex:testcase.elf
	${RISCV_OBJCOPY} $(TESTCASE_ELF) tmp.bin
	od -v -An -tx8 tmp.bin > $(TESTCASE_HEX)
	rm tmp.bin $(TESTCASE_OBJ)

testcase.elf:$(SRC_OBJ)
	$(RISCV_LD) -T link.ld $(SRC_OBJ) -o $(TESTCASE_ELF)
	$(RISCV_OBJDUMP) $(TESTCASE_ELF) > $(TESTCASE_ASM)

%.o:%.S
	$(RISCV_GCC) $(RISCV_GCC_OPTS) -c $<

%.o:%.c
	$(RISCV_GCC) $(RISCV_GCC_OPTS) -c $<

clean:
	rm -rf *.o testcase.* 2> /dev/null
