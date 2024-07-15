
stype/stype.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	1c000093          	addi	ra,zero,448
   8:	0ab00113          	addi	sp,zero,171
   c:	00000797          	auipc	a5,0x0
  10:	01478793          	addi	a5,a5,20 # 20 <_start+0x20>
  14:	0020b023          	sd	sp,0(ra)
  18:	0000b703          	ld	a4,0(ra)
  1c:	0080006f          	jal	zero,24 <_start+0x24>
  20:	00010713          	addi	a4,sp,0
  24:	0ab00393          	addi	t2,zero,171
  28:	18771063          	bne	a4,t2,1a8 <fail>

000000000000002c <test_2>:
  2c:	00200193          	addi	gp,zero,2
  30:	1c000093          	addi	ra,zero,448
  34:	0cd00113          	addi	sp,zero,205
  38:	00000797          	auipc	a5,0x0
  3c:	01478793          	addi	a5,a5,20 # 4c <test_2+0x20>
  40:	0020b423          	sd	sp,8(ra)
  44:	0080b703          	ld	a4,8(ra)
  48:	0080006f          	jal	zero,50 <test_2+0x24>
  4c:	00010713          	addi	a4,sp,0
  50:	0cd00393          	addi	t2,zero,205
  54:	14771a63          	bne	a4,t2,1a8 <fail>

0000000000000058 <test_3>:
  58:	00300193          	addi	gp,zero,3
  5c:	1c000093          	addi	ra,zero,448
  60:	0ef00113          	addi	sp,zero,239
  64:	00000797          	auipc	a5,0x0
  68:	01478793          	addi	a5,a5,20 # 78 <test_3+0x20>
  6c:	0020b823          	sd	sp,16(ra)
  70:	0100b703          	ld	a4,16(ra)
  74:	0080006f          	jal	zero,7c <test_3+0x24>
  78:	00010713          	addi	a4,sp,0
  7c:	0ef00393          	addi	t2,zero,239
  80:	12771463          	bne	a4,t2,1a8 <fail>

0000000000000084 <test_4>:
  84:	00400193          	addi	gp,zero,4
  88:	1c000093          	addi	ra,zero,448
  8c:	01200113          	addi	sp,zero,18
  90:	00000797          	auipc	a5,0x0
  94:	01478793          	addi	a5,a5,20 # a4 <test_4+0x20>
  98:	0020bc23          	sd	sp,24(ra)
  9c:	0180b703          	ld	a4,24(ra)
  a0:	0080006f          	jal	zero,a8 <test_4+0x24>
  a4:	00010713          	addi	a4,sp,0
  a8:	01200393          	addi	t2,zero,18
  ac:	0e771e63          	bne	a4,t2,1a8 <fail>

00000000000000b0 <test_5>:
  b0:	00500193          	addi	gp,zero,5
  b4:	1f800093          	addi	ra,zero,504
  b8:	03400113          	addi	sp,zero,52
  bc:	00000797          	auipc	a5,0x0
  c0:	01478793          	addi	a5,a5,20 # d0 <test_5+0x20>
  c4:	fe20b423          	sd	sp,-24(ra)
  c8:	fe80b703          	ld	a4,-24(ra)
  cc:	0080006f          	jal	zero,d4 <test_5+0x24>
  d0:	00010713          	addi	a4,sp,0
  d4:	03400393          	addi	t2,zero,52
  d8:	0c771863          	bne	a4,t2,1a8 <fail>

00000000000000dc <test_6>:
  dc:	00600193          	addi	gp,zero,6
  e0:	1f800093          	addi	ra,zero,504
  e4:	05600113          	addi	sp,zero,86
  e8:	00000797          	auipc	a5,0x0
  ec:	01478793          	addi	a5,a5,20 # fc <test_6+0x20>
  f0:	fe20b823          	sd	sp,-16(ra)
  f4:	ff00b703          	ld	a4,-16(ra)
  f8:	0080006f          	jal	zero,100 <test_6+0x24>
  fc:	00010713          	addi	a4,sp,0
 100:	05600393          	addi	t2,zero,86
 104:	0a771263          	bne	a4,t2,1a8 <fail>

0000000000000108 <test_7>:
 108:	00700193          	addi	gp,zero,7
 10c:	1f800093          	addi	ra,zero,504
 110:	07800113          	addi	sp,zero,120
 114:	00000797          	auipc	a5,0x0
 118:	01478793          	addi	a5,a5,20 # 128 <test_7+0x20>
 11c:	fe20bc23          	sd	sp,-8(ra)
 120:	ff80b703          	ld	a4,-8(ra)
 124:	0080006f          	jal	zero,12c <test_7+0x24>
 128:	00010713          	addi	a4,sp,0
 12c:	07800393          	addi	t2,zero,120
 130:	06771c63          	bne	a4,t2,1a8 <fail>

0000000000000134 <test_8>:
 134:	00800193          	addi	gp,zero,8
 138:	1f800093          	addi	ra,zero,504
 13c:	09a00113          	addi	sp,zero,154
 140:	00000797          	auipc	a5,0x0
 144:	01478793          	addi	a5,a5,20 # 154 <test_8+0x20>
 148:	0020b023          	sd	sp,0(ra)
 14c:	0000b703          	ld	a4,0(ra)
 150:	0080006f          	jal	zero,158 <test_8+0x24>
 154:	00010713          	addi	a4,sp,0
 158:	09a00393          	addi	t2,zero,154
 15c:	04771663          	bne	a4,t2,1a8 <fail>

0000000000000160 <test_9>:
 160:	00900193          	addi	gp,zero,9
 164:	20000093          	addi	ra,zero,512
 168:	0ac00113          	addi	sp,zero,172
 16c:	fe008213          	addi	tp,ra,-32
 170:	02223023          	sd	sp,32(tp) # 20 <_start+0x20>
 174:	0000b283          	ld	t0,0(ra)
 178:	0ac00393          	addi	t2,zero,172
 17c:	02729663          	bne	t0,t2,1a8 <fail>

0000000000000180 <test_10>:
 180:	00a00193          	addi	gp,zero,10
 184:	20000093          	addi	ra,zero,512
 188:	0bd00113          	addi	sp,zero,189
 18c:	ffd08093          	addi	ra,ra,-3
 190:	0020b5a3          	sd	sp,11(ra)
 194:	20800213          	addi	tp,zero,520
 198:	00023283          	ld	t0,0(tp) # 0 <_start>
 19c:	0bd00393          	addi	t2,zero,189
 1a0:	00729463          	bne	t0,t2,1a8 <fail>
 1a4:	00301663          	bne	zero,gp,1b0 <pass>

00000000000001a8 <fail>:
 1a8:	00100093          	addi	ra,zero,1
 1ac:	c0001073          	unimp

00000000000001b0 <pass>:
 1b0:	00000093          	addi	ra,zero,0
 1b4:	c0001073          	unimp

Disassembly of section .data:

00000000000001c0 <tdat>:
 1c0:	deadbeef          	jal	t4,fffffffffffdb7aa <_end+0xfffffffffffdb59a>
 1c4:	deadbeef          	jal	t4,fffffffffffdb7ae <_end+0xfffffffffffdb59e>

00000000000001c8 <tdat2>:
 1c8:	deadbeef          	jal	t4,fffffffffffdb7b2 <_end+0xfffffffffffdb5a2>
 1cc:	deadbeef          	jal	t4,fffffffffffdb7b6 <_end+0xfffffffffffdb5a6>

00000000000001d0 <tdat3>:
 1d0:	deadbeef          	jal	t4,fffffffffffdb7ba <_end+0xfffffffffffdb5aa>
 1d4:	deadbeef          	jal	t4,fffffffffffdb7be <_end+0xfffffffffffdb5ae>

00000000000001d8 <tdat4>:
 1d8:	deadbeef          	jal	t4,fffffffffffdb7c2 <_end+0xfffffffffffdb5b2>
 1dc:	deadbeef          	jal	t4,fffffffffffdb7c6 <_end+0xfffffffffffdb5b6>

00000000000001e0 <tdat5>:
 1e0:	deadbeef          	jal	t4,fffffffffffdb7ca <_end+0xfffffffffffdb5ba>
 1e4:	deadbeef          	jal	t4,fffffffffffdb7ce <_end+0xfffffffffffdb5be>

00000000000001e8 <tdat6>:
 1e8:	deadbeef          	jal	t4,fffffffffffdb7d2 <_end+0xfffffffffffdb5c2>
 1ec:	deadbeef          	jal	t4,fffffffffffdb7d6 <_end+0xfffffffffffdb5c6>

00000000000001f0 <tdat7>:
 1f0:	deadbeef          	jal	t4,fffffffffffdb7da <_end+0xfffffffffffdb5ca>
 1f4:	deadbeef          	jal	t4,fffffffffffdb7de <_end+0xfffffffffffdb5ce>

00000000000001f8 <tdat8>:
 1f8:	deadbeef          	jal	t4,fffffffffffdb7e2 <_end+0xfffffffffffdb5d2>
 1fc:	deadbeef          	jal	t4,fffffffffffdb7e6 <_end+0xfffffffffffdb5d6>

0000000000000200 <tdat9>:
 200:	deadbeef          	jal	t4,fffffffffffdb7ea <_end+0xfffffffffffdb5da>
 204:	deadbeef          	jal	t4,fffffffffffdb7ee <_end+0xfffffffffffdb5de>

0000000000000208 <tdat10>:
 208:	deadbeef          	jal	t4,fffffffffffdb7f2 <_end+0xfffffffffffdb5e2>
 20c:	deadbeef          	jal	t4,fffffffffffdb7f6 <_end+0xfffffffffffdb5e6>

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <_start+0x14>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
