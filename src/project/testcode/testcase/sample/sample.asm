
sample/sample.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <Begin>:
   0:	07b00093          	addi	ra,zero,123
   4:	06f08113          	addi	sp,ra,111
   8:	06f10193          	addi	gp,sp,111
   c:	06f18213          	addi	tp,gp,111
  10:	06f20293          	addi	t0,tp,111 # 6f <Test_2+0x3>
  14:	00000313          	addi	t1,zero,0
  18:	00400393          	addi	t2,zero,4
  1c:	10400413          	addi	s0,zero,260
  20:	10800493          	addi	s1,zero,264
  24:	40400513          	addi	a0,zero,1028
  28:	00000a13          	addi	s4,zero,0

000000000000002c <Test_1>:
  2c:	00132023          	sw	ra,0(t1)
  30:	00032083          	lw	ra,0(t1)
  34:	0023a023          	sw	sp,0(t2)
  38:	0003a103          	lw	sp,0(t2)
  3c:	00032583          	lw	a1,0(t1)
  40:	00342023          	sw	gp,0(s0)
  44:	00042183          	lw	gp,0(s0)
  48:	0044a023          	sw	tp,0(s1)
  4c:	0004a203          	lw	tp,0(s1)
  50:	00042683          	lw	a3,0(s0)
  54:	0003a603          	lw	a2,0(t2)
  58:	0004a703          	lw	a4,0(s1)
  5c:	ea758593          	addi	a1,a1,-345
  60:	e3860613          	addi	a2,a2,-456
  64:	00c59463          	bne	a1,a2,6c <Test_2>
  68:	001a0a13          	addi	s4,s4,1

000000000000006c <Test_2>:
  6c:	00552023          	sw	t0,0(a0)
  70:	0003a583          	lw	a1,0(t2)
  74:	00052603          	lw	a2,0(a0)
  78:	14d58593          	addi	a1,a1,333
  7c:	00c59463          	bne	a1,a2,84 <Test_3>
  80:	001a0a13          	addi	s4,s4,1

0000000000000084 <Test_3>:
  84:	00032583          	lw	a1,0(t1)
  88:	00052603          	lw	a2,0(a0)
  8c:	1bc58593          	addi	a1,a1,444
  90:	00c59463          	bne	a1,a2,98 <End>
  94:	001a0a13          	addi	s4,s4,1

0000000000000098 <End>:
  98:	00300a93          	addi	s5,zero,3
  9c:	ff4a9ee3          	bne	s5,s4,98 <End>

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <Begin+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
