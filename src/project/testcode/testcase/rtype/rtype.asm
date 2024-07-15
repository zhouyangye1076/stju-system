
rtype/rtype.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	01000093          	addi	ra,zero,16
   8:	01e00113          	addi	sp,zero,30
   c:	00208033          	add	zero,ra,sp

0000000000000010 <test_2>:
  10:	00200193          	addi	gp,zero,2
  14:	00000093          	addi	ra,zero,0
  18:	00000113          	addi	sp,zero,0
  1c:	00208733          	add	a4,ra,sp

0000000000000020 <test_3>:
  20:	00300193          	addi	gp,zero,3
  24:	00100093          	addi	ra,zero,1
  28:	00100113          	addi	sp,zero,1
  2c:	00208733          	add	a4,ra,sp

0000000000000030 <test_4>:
  30:	00400193          	addi	gp,zero,4
  34:	00300093          	addi	ra,zero,3
  38:	00700113          	addi	sp,zero,7
  3c:	00208733          	add	a4,ra,sp

0000000000000040 <test_5>:
  40:	00500193          	addi	gp,zero,5
  44:	000000b3          	add	ra,zero,zero

0000000000000048 <test_6>:
  48:	00600193          	addi	gp,zero,6
  4c:	00d00093          	addi	ra,zero,13
  50:	00b00113          	addi	sp,zero,11
  54:	002080b3          	add	ra,ra,sp

0000000000000058 <test_7>:
  58:	00700193          	addi	gp,zero,7
  5c:	00d00093          	addi	ra,zero,13
  60:	001080b3          	add	ra,ra,ra

0000000000000064 <test_8>:
  64:	00800193          	addi	gp,zero,8
  68:	00f00093          	addi	ra,zero,15
  6c:	00100133          	add	sp,zero,ra

0000000000000070 <test_9>:
  70:	00900193          	addi	gp,zero,9
  74:	02000093          	addi	ra,zero,32
  78:	00008133          	add	sp,ra,zero

000000000000007c <test_10>:
  7c:	00a00193          	addi	gp,zero,10
  80:	ff100093          	addi	ra,zero,-15
  84:	40100133          	sub	sp,zero,ra

0000000000000088 <test_11>:
  88:	00b00193          	addi	gp,zero,11
  8c:	00d00093          	addi	ra,zero,13
  90:	00b00113          	addi	sp,zero,11
  94:	402080b3          	sub	ra,ra,sp

0000000000000098 <test_12>:
  98:	00c00193          	addi	gp,zero,12
  9c:	00e00093          	addi	ra,zero,14
  a0:	00b00113          	addi	sp,zero,11
  a4:	40208133          	sub	sp,ra,sp

00000000000000a8 <test_13>:
  a8:	00d00193          	addi	gp,zero,13
  ac:	00d00093          	addi	ra,zero,13
  b0:	401080b3          	sub	ra,ra,ra

00000000000000b4 <test_14>:
  b4:	00e00193          	addi	gp,zero,14
  b8:	02000093          	addi	ra,zero,32
  bc:	40008133          	sub	sp,ra,zero

00000000000000c0 <test_15>:
  c0:	00f00193          	addi	gp,zero,15
  c4:	400000b3          	sub	ra,zero,zero

00000000000000c8 <test_16>:
  c8:	01000193          	addi	gp,zero,16
  cc:	01000093          	addi	ra,zero,16
  d0:	01e00113          	addi	sp,zero,30
  d4:	40208033          	sub	zero,ra,sp

00000000000000d8 <test_17>:
  d8:	01100193          	addi	gp,zero,17
  dc:	00100093          	addi	ra,zero,1
  e0:	00700113          	addi	sp,zero,7
  e4:	002090b3          	sll	ra,ra,sp

00000000000000e8 <test_18>:
  e8:	01200193          	addi	gp,zero,18
  ec:	00100093          	addi	ra,zero,1
  f0:	00e00113          	addi	sp,zero,14
  f4:	00209133          	sll	sp,ra,sp

00000000000000f8 <test_19>:
  f8:	01300193          	addi	gp,zero,19
  fc:	00300093          	addi	ra,zero,3
 100:	001090b3          	sll	ra,ra,ra

0000000000000104 <test_20>:
 104:	01400193          	addi	gp,zero,20
 108:	02000093          	addi	ra,zero,32
 10c:	00009133          	sll	sp,ra,zero

0000000000000110 <test_21>:
 110:	01500193          	addi	gp,zero,21
 114:	00f00093          	addi	ra,zero,15
 118:	00101133          	sll	sp,zero,ra

000000000000011c <test_22>:
 11c:	01600193          	addi	gp,zero,22
 120:	000010b3          	sll	ra,zero,zero

0000000000000124 <test_23>:
 124:	01700193          	addi	gp,zero,23
 128:	00e00093          	addi	ra,zero,14
 12c:	00d00113          	addi	sp,zero,13
 130:	0020a0b3          	slt	ra,ra,sp

0000000000000134 <test_24>:
 134:	01800193          	addi	gp,zero,24
 138:	00b00093          	addi	ra,zero,11
 13c:	00d00113          	addi	sp,zero,13
 140:	0020a133          	slt	sp,ra,sp

0000000000000144 <test_25>:
 144:	01900193          	addi	gp,zero,25
 148:	00d00093          	addi	ra,zero,13
 14c:	0010a0b3          	slt	ra,ra,ra

0000000000000150 <test_26>:
 150:	01a00193          	addi	gp,zero,26
 154:	fff00093          	addi	ra,zero,-1
 158:	00102133          	slt	sp,zero,ra

000000000000015c <test_27>:
 15c:	01b00193          	addi	gp,zero,27
 160:	fff00093          	addi	ra,zero,-1
 164:	0000a133          	slt	sp,ra,zero

0000000000000168 <test_28>:
 168:	01c00193          	addi	gp,zero,28
 16c:	000020b3          	slt	ra,zero,zero

0000000000000170 <test_29>:
 170:	01d00193          	addi	gp,zero,29
 174:	01000093          	addi	ra,zero,16
 178:	01e00113          	addi	sp,zero,30
 17c:	0020a033          	slt	zero,ra,sp

0000000000000180 <test_30>:
 180:	01e00193          	addi	gp,zero,30
 184:	00e00093          	addi	ra,zero,14
 188:	00d00113          	addi	sp,zero,13
 18c:	0020b0b3          	sltu	ra,ra,sp

0000000000000190 <test_31>:
 190:	01f00193          	addi	gp,zero,31
 194:	00b00093          	addi	ra,zero,11
 198:	00d00113          	addi	sp,zero,13
 19c:	0020b133          	sltu	sp,ra,sp

00000000000001a0 <test_32>:
 1a0:	02000193          	addi	gp,zero,32
 1a4:	00d00093          	addi	ra,zero,13
 1a8:	0010b0b3          	sltu	ra,ra,ra

00000000000001ac <test_33>:
 1ac:	02100193          	addi	gp,zero,33
 1b0:	fff00093          	addi	ra,zero,-1
 1b4:	00103133          	sltu	sp,zero,ra

00000000000001b8 <test_34>:
 1b8:	02200193          	addi	gp,zero,34
 1bc:	fff00093          	addi	ra,zero,-1
 1c0:	0000b133          	sltu	sp,ra,zero

00000000000001c4 <test_35>:
 1c4:	02300193          	addi	gp,zero,35
 1c8:	000030b3          	sltu	ra,zero,zero

00000000000001cc <test_36>:
 1cc:	02400193          	addi	gp,zero,36
 1d0:	01000093          	addi	ra,zero,16
 1d4:	01e00113          	addi	sp,zero,30
 1d8:	0020b033          	sltu	zero,ra,sp

00000000000001dc <test_37>:
 1dc:	02500193          	addi	gp,zero,37
 1e0:	0ff00093          	addi	ra,zero,255
 1e4:	00f00113          	addi	sp,zero,15
 1e8:	0020c733          	xor	a4,ra,sp

00000000000001ec <test_38>:
 1ec:	02600193          	addi	gp,zero,38
 1f0:	00f00093          	addi	ra,zero,15
 1f4:	0f000113          	addi	sp,zero,240
 1f8:	0020c733          	xor	a4,ra,sp

00000000000001fc <test_39>:
 1fc:	02700193          	addi	gp,zero,39
 200:	00000093          	addi	ra,zero,0
 204:	00f00113          	addi	sp,zero,15
 208:	0020c0b3          	xor	ra,ra,sp

000000000000020c <test_40>:
 20c:	02800193          	addi	gp,zero,40
 210:	000040b3          	xor	ra,zero,zero

0000000000000214 <test_41>:
 214:	02900193          	addi	gp,zero,41
 218:	01100093          	addi	ra,zero,17
 21c:	02200113          	addi	sp,zero,34
 220:	0020c033          	xor	zero,ra,sp

0000000000000224 <test_42>:
 224:	02a00193          	addi	gp,zero,42
 228:	00700093          	addi	ra,zero,7
 22c:	0010d0b3          	srl	ra,ra,ra

0000000000000230 <test_43>:
 230:	02b00193          	addi	gp,zero,43
 234:	00f00093          	addi	ra,zero,15
 238:	00105133          	srl	sp,zero,ra

000000000000023c <test_44>:
 23c:	02c00193          	addi	gp,zero,44
 240:	02000093          	addi	ra,zero,32
 244:	0000d133          	srl	sp,ra,zero

0000000000000248 <test_45>:
 248:	02d00193          	addi	gp,zero,45
 24c:	000050b3          	srl	ra,zero,zero

0000000000000250 <test_46>:
 250:	02e00193          	addi	gp,zero,46
 254:	00700093          	addi	ra,zero,7
 258:	4010d0b3          	sra	ra,ra,ra

000000000000025c <test_47>:
 25c:	02f00193          	addi	gp,zero,47
 260:	00f00093          	addi	ra,zero,15
 264:	40105133          	sra	sp,zero,ra

0000000000000268 <test_48>:
 268:	03000193          	addi	gp,zero,48
 26c:	02000093          	addi	ra,zero,32
 270:	4000d133          	sra	sp,ra,zero

0000000000000274 <test_49>:
 274:	03100193          	addi	gp,zero,49
 278:	400050b3          	sra	ra,zero,zero

000000000000027c <test_50>:
 27c:	03200193          	addi	gp,zero,50
 280:	00000093          	addi	ra,zero,0
 284:	00f00113          	addi	sp,zero,15
 288:	0020e0b3          	or	ra,ra,sp

000000000000028c <test_51>:
 28c:	03300193          	addi	gp,zero,51
 290:	00f00093          	addi	ra,zero,15
 294:	0f000113          	addi	sp,zero,240
 298:	0020e733          	or	a4,ra,sp

000000000000029c <test_52>:
 29c:	03400193          	addi	gp,zero,52
 2a0:	01100093          	addi	ra,zero,17
 2a4:	02200113          	addi	sp,zero,34
 2a8:	0020e033          	or	zero,ra,sp

00000000000002ac <test_53>:
 2ac:	03500193          	addi	gp,zero,53
 2b0:	0ff00093          	addi	ra,zero,255
 2b4:	00f00113          	addi	sp,zero,15
 2b8:	0020f733          	and	a4,ra,sp

00000000000002bc <test_54>:
 2bc:	03600193          	addi	gp,zero,54
 2c0:	00f00093          	addi	ra,zero,15
 2c4:	0f000113          	addi	sp,zero,240
 2c8:	0020f733          	and	a4,ra,sp

00000000000002cc <test_55>:
 2cc:	03700193          	addi	gp,zero,55
 2d0:	000070b3          	and	ra,zero,zero

00000000000002d4 <test_56>:
 2d4:	03800193          	addi	gp,zero,56
 2d8:	01100093          	addi	ra,zero,17
 2dc:	02200113          	addi	sp,zero,34
 2e0:	0020f033          	and	zero,ra,sp
 2e4:	00301663          	bne	zero,gp,2f0 <pass>

00000000000002e8 <fail>:
 2e8:	00100093          	addi	ra,zero,1
 2ec:	c0001073          	unimp

00000000000002f0 <pass>:
 2f0:	00000093          	addi	ra,zero,0
 2f4:	c0001073          	unimp

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	1941                	.2byte	0x1941
   2:	0000                	.2byte	0x0
   4:	7200                	.2byte	0x7200
   6:	7369                	.2byte	0x7369
   8:	01007663          	bgeu	zero,a6,14 <test_2+0x4>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.2byte	0x7205
  12:	3676                	.2byte	0x3676
  14:	6934                	.2byte	0x6934
  16:	7032                	.2byte	0x7032
  18:	0030                	.2byte	0x30
