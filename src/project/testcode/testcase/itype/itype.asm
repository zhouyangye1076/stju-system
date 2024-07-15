
itype/itype.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	00000093          	addi	ra,zero,0
   8:	00008713          	addi	a4,ra,0

000000000000000c <test_2>:
   c:	00200193          	addi	gp,zero,2
  10:	00100093          	addi	ra,zero,1
  14:	00108713          	addi	a4,ra,1

0000000000000018 <test_3>:
  18:	00300193          	addi	gp,zero,3
  1c:	00300093          	addi	ra,zero,3
  20:	00708713          	addi	a4,ra,7

0000000000000024 <test_4>:
  24:	00400193          	addi	gp,zero,4
  28:	00d00093          	addi	ra,zero,13
  2c:	00b08093          	addi	ra,ra,11

0000000000000030 <test_5>:
  30:	00500193          	addi	gp,zero,5
  34:	02000093          	addi	ra,zero,32

0000000000000038 <test_6>:
  38:	00600193          	addi	gp,zero,6
  3c:	02100093          	addi	ra,zero,33
  40:	03208013          	addi	zero,ra,50

0000000000000044 <test_7>:
  44:	00700193          	addi	gp,zero,7
  48:	00000093          	addi	ra,zero,0
  4c:	0000a713          	slti	a4,ra,0

0000000000000050 <test_8>:
  50:	00800193          	addi	gp,zero,8
  54:	00100093          	addi	ra,zero,1
  58:	0010a713          	slti	a4,ra,1

000000000000005c <test_9>:
  5c:	00900193          	addi	gp,zero,9
  60:	00300093          	addi	ra,zero,3
  64:	0070a713          	slti	a4,ra,7

0000000000000068 <test_10>:
  68:	00a00193          	addi	gp,zero,10
  6c:	00b00093          	addi	ra,zero,11
  70:	00d0a093          	slti	ra,ra,13

0000000000000074 <test_11>:
  74:	00b00193          	addi	gp,zero,11
  78:	fff02093          	slti	ra,zero,-1

000000000000007c <test_12>:
  7c:	00c00193          	addi	gp,zero,12
  80:	0f000093          	addi	ra,zero,240
  84:	00f0a013          	slti	zero,ra,15

0000000000000088 <test_13>:
  88:	00d00193          	addi	gp,zero,13
  8c:	00000093          	addi	ra,zero,0
  90:	0000b713          	sltiu	a4,ra,0

0000000000000094 <test_14>:
  94:	00e00193          	addi	gp,zero,14
  98:	00100093          	addi	ra,zero,1
  9c:	0010b713          	sltiu	a4,ra,1

00000000000000a0 <test_15>:
  a0:	00f00193          	addi	gp,zero,15
  a4:	00300093          	addi	ra,zero,3
  a8:	0070b713          	sltiu	a4,ra,7

00000000000000ac <test_16>:
  ac:	01000193          	addi	gp,zero,16
  b0:	00b00093          	addi	ra,zero,11
  b4:	00d0b093          	sltiu	ra,ra,13

00000000000000b8 <test_17>:
  b8:	01100193          	addi	gp,zero,17
  bc:	fff03093          	sltiu	ra,zero,-1

00000000000000c0 <test_18>:
  c0:	01200193          	addi	gp,zero,18
  c4:	0ff00093          	addi	ra,zero,255
  c8:	0f00b013          	sltiu	zero,ra,240

00000000000000cc <test_19>:
  cc:	01300193          	addi	gp,zero,19
  d0:	00000093          	addi	ra,zero,0
  d4:	00f0c713          	xori	a4,ra,15

00000000000000d8 <test_20>:
  d8:	01400193          	addi	gp,zero,20
  dc:	0ff00093          	addi	ra,zero,255
  e0:	00f0c713          	xori	a4,ra,15

00000000000000e4 <test_21>:
  e4:	01500193          	addi	gp,zero,21
  e8:	00f00093          	addi	ra,zero,15
  ec:	0f00c713          	xori	a4,ra,240

00000000000000f0 <test_22>:
  f0:	01600193          	addi	gp,zero,22
  f4:	00000093          	addi	ra,zero,0
  f8:	00f0c093          	xori	ra,ra,15

00000000000000fc <test_23>:
  fc:	01700193          	addi	gp,zero,23
 100:	0f004093          	xori	ra,zero,240

0000000000000104 <test_24>:
 104:	01800193          	addi	gp,zero,24
 108:	0ff00093          	addi	ra,zero,255
 10c:	00f0c013          	xori	zero,ra,15

0000000000000110 <test_25>:
 110:	01900193          	addi	gp,zero,25
 114:	0f000093          	addi	ra,zero,240
 118:	0f00e713          	ori	a4,ra,240

000000000000011c <test_26>:
 11c:	01a00193          	addi	gp,zero,26
 120:	0ff00093          	addi	ra,zero,255
 124:	00f0e713          	ori	a4,ra,15

0000000000000128 <test_27>:
 128:	01b00193          	addi	gp,zero,27
 12c:	00f00093          	addi	ra,zero,15
 130:	0f00e713          	ori	a4,ra,240

0000000000000134 <test_28>:
 134:	01c00193          	addi	gp,zero,28
 138:	00000093          	addi	ra,zero,0
 13c:	0f00e093          	ori	ra,ra,240

0000000000000140 <test_29>:
 140:	01d00193          	addi	gp,zero,29
 144:	0f006093          	ori	ra,zero,240

0000000000000148 <test_30>:
 148:	01e00193          	addi	gp,zero,30
 14c:	0ff00093          	addi	ra,zero,255
 150:	00f0e013          	ori	zero,ra,15

0000000000000154 <test_31>:
 154:	01f00193          	addi	gp,zero,31
 158:	0f000093          	addi	ra,zero,240
 15c:	0f00f713          	andi	a4,ra,240

0000000000000160 <test_32>:
 160:	02000193          	addi	gp,zero,32
 164:	0ff00093          	addi	ra,zero,255
 168:	00f0f713          	andi	a4,ra,15

000000000000016c <test_33>:
 16c:	02100193          	addi	gp,zero,33
 170:	00f00093          	addi	ra,zero,15
 174:	0f00f713          	andi	a4,ra,240

0000000000000178 <test_34>:
 178:	02200193          	addi	gp,zero,34
 17c:	00000093          	addi	ra,zero,0
 180:	0f00f093          	andi	ra,ra,240

0000000000000184 <test_35>:
 184:	02300193          	addi	gp,zero,35
 188:	0f007093          	andi	ra,zero,240

000000000000018c <test_36>:
 18c:	02400193          	addi	gp,zero,36
 190:	0ff00093          	addi	ra,zero,255
 194:	00f0f013          	andi	zero,ra,15

0000000000000198 <test_37>:
 198:	02500193          	addi	gp,zero,37
 19c:	00100093          	addi	ra,zero,1
 1a0:	00009713          	slli	a4,ra,0x0

00000000000001a4 <test_38>:
 1a4:	02600193          	addi	gp,zero,38
 1a8:	00100093          	addi	ra,zero,1
 1ac:	00109713          	slli	a4,ra,0x1

00000000000001b0 <test_39>:
 1b0:	02700193          	addi	gp,zero,39
 1b4:	00100093          	addi	ra,zero,1
 1b8:	00709713          	slli	a4,ra,0x7

00000000000001bc <test_40>:
 1bc:	02800193          	addi	gp,zero,40
 1c0:	00100093          	addi	ra,zero,1
 1c4:	00e09713          	slli	a4,ra,0xe

00000000000001c8 <test_41>:
 1c8:	02900193          	addi	gp,zero,41
 1cc:	00100093          	addi	ra,zero,1
 1d0:	00709093          	slli	ra,ra,0x7

00000000000001d4 <test_42>:
 1d4:	02a00193          	addi	gp,zero,42
 1d8:	02100093          	addi	ra,zero,33
 1dc:	01409013          	slli	zero,ra,0x14

00000000000001e0 <test_43>:
 1e0:	02b00193          	addi	gp,zero,43
 1e4:	20f00093          	addi	ra,zero,527
 1e8:	0010d713          	srli	a4,ra,0x1

00000000000001ec <test_44>:
 1ec:	02c00193          	addi	gp,zero,44
 1f0:	20f00093          	addi	ra,zero,527
 1f4:	0070d713          	srli	a4,ra,0x7

00000000000001f8 <test_45>:
 1f8:	02d00193          	addi	gp,zero,45
 1fc:	20f00093          	addi	ra,zero,527
 200:	00e0d713          	srli	a4,ra,0xe

0000000000000204 <test_46>:
 204:	02e00193          	addi	gp,zero,46
 208:	40000093          	addi	ra,zero,1024
 20c:	0070d093          	srli	ra,ra,0x7

0000000000000210 <test_47>:
 210:	02f00193          	addi	gp,zero,47
 214:	00405093          	srli	ra,zero,0x4

0000000000000218 <test_48>:
 218:	03000193          	addi	gp,zero,48
 21c:	02100093          	addi	ra,zero,33
 220:	00a0d013          	srli	zero,ra,0xa

0000000000000224 <test_49>:
 224:	03100193          	addi	gp,zero,49
 228:	0ff00093          	addi	ra,zero,255
 22c:	4000d713          	srai	a4,ra,0x0

0000000000000230 <test_50>:
 230:	03200193          	addi	gp,zero,50
 234:	0fc00093          	addi	ra,zero,252
 238:	4010d713          	srai	a4,ra,0x1

000000000000023c <test_51>:
 23c:	03300193          	addi	gp,zero,51
 240:	0ff00093          	addi	ra,zero,255
 244:	4070d713          	srai	a4,ra,0x7

0000000000000248 <test_52>:
 248:	03400193          	addi	gp,zero,52
 24c:	18100093          	addi	ra,zero,385
 250:	4010d713          	srai	a4,ra,0x1

0000000000000254 <test_53>:
 254:	03500193          	addi	gp,zero,53
 258:	40405093          	srai	ra,zero,0x4

000000000000025c <test_54>:
 25c:	03600193          	addi	gp,zero,54
 260:	02100093          	addi	ra,zero,33
 264:	40a0d013          	srai	zero,ra,0xa

0000000000000268 <test_55>:
 268:	03700193          	addi	gp,zero,55
 26c:	0ff00793          	addi	a5,zero,255
 270:	2e000093          	addi	ra,zero,736
 274:	0180b703          	ld	a4,24(ra)

0000000000000278 <test_56>:
 278:	03800193          	addi	gp,zero,56
 27c:	0ab00793          	addi	a5,zero,171
 280:	2e000093          	addi	ra,zero,736
 284:	0080b703          	ld	a4,8(ra)

0000000000000288 <test_57>:
 288:	03900193          	addi	gp,zero,57
 28c:	0de00793          	addi	a5,zero,222
 290:	2f800093          	addi	ra,zero,760
 294:	fe80b703          	ld	a4,-24(ra)

0000000000000298 <test_58>:
 298:	03a00193          	addi	gp,zero,58
 29c:	0cd00793          	addi	a5,zero,205
 2a0:	2f800093          	addi	ra,zero,760
 2a4:	ff80b703          	ld	a4,-8(ra)

00000000000002a8 <test_59>:
 2a8:	03b00193          	addi	gp,zero,59
 2ac:	2e000093          	addi	ra,zero,736
 2b0:	fe008093          	addi	ra,ra,-32
 2b4:	0200b283          	ld	t0,32(ra)

00000000000002b8 <test_60>:
 2b8:	03c00193          	addi	gp,zero,60
 2bc:	2e000093          	addi	ra,zero,736
 2c0:	ffd08093          	addi	ra,ra,-3
 2c4:	00b0b283          	ld	t0,11(ra)
 2c8:	00301663          	bne	zero,gp,2d4 <pass>

00000000000002cc <fail>:
 2cc:	00100093          	addi	ra,zero,1
 2d0:	c0001073          	unimp

00000000000002d4 <pass>:
 2d4:	00000093          	addi	ra,zero,0
 2d8:	c0001073          	unimp

Disassembly of section .data:

00000000000002e0 <tdat>:
 2e0:	00de                	.2byte	0xde
 2e2:	0000                	.2byte	0x0
 2e4:	0000                	.2byte	0x0
	...

00000000000002e8 <tdat2>:
 2e8:	000000ab          	.4byte	0xab
 2ec:	0000                	.2byte	0x0
	...

00000000000002f0 <tdat3>:
 2f0:	00cd                	.2byte	0xcd
 2f2:	0000                	.2byte	0x0
 2f4:	0000                	.2byte	0x0
	...

00000000000002f8 <tdat4>:
 2f8:	ff 00 00 00 	Address 0x2f8 is out of bounds.

 2fc:	00 
 2fd:	0000                	.2byte	0x0
	...

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <test_2+0x8>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0031                	.2byte	0x31
