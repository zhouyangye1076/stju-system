
syn/syn.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100093          	addi	ra,zero,1
   4:	00100113          	addi	sp,zero,1
   8:	00500213          	addi	tp,zero,5

000000000000000c <fibonacci>:
   c:	002081b3          	add	gp,ra,sp
  10:	003100b3          	add	ra,sp,gp
  14:	00308133          	add	sp,ra,gp
  18:	fff20213          	addi	tp,tp,-1 # ffffffffffffffff <_end+0xfffffffffffffeaf>
  1c:	fe4018e3          	bne	zero,tp,c <fibonacci>
  20:	63d00293          	addi	t0,zero,1597
  24:	0c511e63          	bne	sp,t0,100 <fail>

0000000000000028 <test2>:
  28:	11000113          	addi	sp,zero,272
  2c:	15000193          	addi	gp,zero,336
  30:	00010083          	lb	ra,0(sp)
  34:	00118023          	sb	ra,0(gp)
  38:	00110083          	lb	ra,1(sp)
  3c:	001180a3          	sb	ra,1(gp)
  40:	00211083          	lh	ra,2(sp)
  44:	00119123          	sh	ra,2(gp)
  48:	00412083          	lw	ra,4(sp)
  4c:	0011a223          	sw	ra,4(gp)
  50:	00813083          	ld	ra,8(sp)
  54:	0011b423          	sd	ra,8(gp)
  58:	00014083          	lbu	ra,0(sp)
  5c:	0011b823          	sd	ra,16(gp)
  60:	00010083          	lb	ra,0(sp)
  64:	0011bc23          	sd	ra,24(gp)
  68:	00015083          	lhu	ra,0(sp)
  6c:	0211b023          	sd	ra,32(gp)
  70:	00011083          	lh	ra,0(sp)
  74:	0211b423          	sd	ra,40(gp)
  78:	00016083          	lwu	ra,0(sp)
  7c:	0211b823          	sd	ra,48(gp)
  80:	00012083          	lw	ra,0(sp)
  84:	0211bc23          	sd	ra,56(gp)
  88:	00800093          	addi	ra,zero,8
  8c:	00800293          	addi	t0,zero,8

0000000000000090 <memcmp>:
  90:	02008063          	beq	ra,zero,b0 <test3>
  94:	00013203          	ld	tp,0(sp)
  98:	0001b303          	ld	t1,0(gp)
  9c:	00510133          	add	sp,sp,t0
  a0:	005181b3          	add	gp,gp,t0
  a4:	fff08093          	addi	ra,ra,-1
  a8:	04621c63          	bne	tp,t1,100 <fail>
  ac:	fe5ff06f          	jal	zero,90 <memcmp>

00000000000000b0 <test3>:
  b0:	deadb0b7          	lui	ra,0xdeadb
  b4:	0ef06113          	ori	sp,zero,239
  b8:	002081b3          	add	gp,ra,sp
  bc:	00140413          	addi	s0,s0,1
  c0:	02041413          	slli	s0,s0,0x20
  c4:	008181b3          	add	gp,gp,s0
  c8:	401100b3          	sub	ra,sp,ra
  cc:	00100113          	addi	sp,zero,1
  d0:	0021d233          	srl	tp,gp,sp
  d4:	0040f133          	and	sp,ra,tp
  d8:	215250b7          	lui	ra,0x21525
  dc:	06708093          	addi	ra,ra,103 # 21525067 <_end+0x21524f17>
  e0:	02111063          	bne	sp,ra,100 <fail>
  e4:	00000097          	auipc	ra,0x0
  e8:	00c08093          	addi	ra,ra,12 # f0 <jalr_here>
  ec:	000080e7          	jalr	ra,0(ra)

00000000000000f0 <jalr_here>:
  f0:	00000117          	auipc	sp,0x0
  f4:	00010113          	addi	sp,sp,0 # f0 <jalr_here>
  f8:	00209463          	bne	ra,sp,100 <fail>
  fc:	00301663          	bne	zero,gp,108 <pass>

0000000000000100 <fail>:
 100:	00100093          	addi	ra,zero,1
 104:	c0001073          	unimp

0000000000000108 <pass>:
 108:	00000093          	addi	ra,zero,0
 10c:	c0001073          	unimp

Disassembly of section .data:

0000000000000110 <databegin>:
 110:	f6f8                	.2byte	0xf6f8
 112:	f234                	.2byte	0xf234
 114:	4321                	.2byte	0x4321
 116:	8765                	.2byte	0x8765
 118:	23333333          	.4byte	0x23333333
 11c:	6666                	.2byte	0x6666
 11e:	6666                	.2byte	0x6666
 120:	00f8                	.2byte	0xf8
 122:	0000                	.2byte	0x0
 124:	0000                	.2byte	0x0
 126:	0000                	.2byte	0x0
 128:	fff8                	.2byte	0xfff8
 12a:	ffff                	.2byte	0xffff
 12c:	ffff                	.2byte	0xffff
 12e:	ffff                	.2byte	0xffff
 130:	f6f8                	.2byte	0xf6f8
 132:	0000                	.2byte	0x0
 134:	0000                	.2byte	0x0
 136:	0000                	.2byte	0x0
 138:	f6f8                	.2byte	0xf6f8
 13a:	ffff                	.2byte	0xffff
 13c:	ffff                	.2byte	0xffff
 13e:	ffff                	.2byte	0xffff
 140:	f6f8                	.2byte	0xf6f8
 142:	f234                	.2byte	0xf234
 144:	0000                	.2byte	0x0
 146:	0000                	.2byte	0x0
 148:	f6f8                	.2byte	0xf6f8
 14a:	f234                	.2byte	0xf234
 14c:	ffff                	.2byte	0xffff
 14e:	ffff                	.2byte	0xffff

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <fibonacci+0x8>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
