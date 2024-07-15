
jtype/jtype.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	00000093          	addi	ra,zero,0
   8:	0100026f          	jal	tp,18 <target_2>

000000000000000c <linkaddr_2>:
   c:	00000013          	addi	zero,zero,0
  10:	00000013          	addi	zero,zero,0
  14:	0400006f          	jal	zero,54 <fail>

0000000000000018 <target_2>:
  18:	00000117          	auipc	sp,0x0
  1c:	ff410113          	addi	sp,sp,-12 # c <linkaddr_2>
  20:	02411a63          	bne	sp,tp,54 <fail>

0000000000000024 <test_2>:
  24:	00200193          	addi	gp,zero,2
  28:	00100093          	addi	ra,zero,1
  2c:	0140006f          	jal	zero,40 <test_2+0x1c>
  30:	00108093          	addi	ra,ra,1
  34:	00108093          	addi	ra,ra,1
  38:	00108093          	addi	ra,ra,1
  3c:	00108093          	addi	ra,ra,1
  40:	00108093          	addi	ra,ra,1
  44:	00108093          	addi	ra,ra,1
  48:	00300393          	addi	t2,zero,3
  4c:	00709463          	bne	ra,t2,54 <fail>
  50:	00301663          	bne	zero,gp,5c <pass>

0000000000000054 <fail>:
  54:	00100093          	addi	ra,zero,1
  58:	c0001073          	unimp

000000000000005c <pass>:
  5c:	00000093          	addi	ra,zero,0
  60:	c0001073          	unimp

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <linkaddr_2+0x8>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
