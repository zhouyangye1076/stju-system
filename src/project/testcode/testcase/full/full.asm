
full/full.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	00300093          	addi	ra,zero,3
   8:	00700113          	addi	sp,zero,7
   c:	00208733          	add	a4,ra,sp
  10:	00a00393          	addi	t2,zero,10
  14:	187718e3          	bne	a4,t2,9a4 <fail>

0000000000000018 <test_2>:
  18:	00200193          	addi	gp,zero,2
  1c:	00d00093          	addi	ra,zero,13
  20:	00b00113          	addi	sp,zero,11
  24:	402080b3          	sub	ra,ra,sp
  28:	00200393          	addi	t2,zero,2
  2c:	16709ce3          	bne	ra,t2,9a4 <fail>

0000000000000030 <test_3>:
  30:	00300193          	addi	gp,zero,3
  34:	00100093          	addi	ra,zero,1
  38:	00e00113          	addi	sp,zero,14
  3c:	00209133          	sll	sp,ra,sp
  40:	000043b7          	lui	t2,0x4
  44:	167110e3          	bne	sp,t2,9a4 <fail>

0000000000000048 <test_4>:
  48:	00400193          	addi	gp,zero,4
  4c:	00b00093          	addi	ra,zero,11
  50:	00d00113          	addi	sp,zero,13
  54:	0020a133          	slt	sp,ra,sp
  58:	00100393          	addi	t2,zero,1
  5c:	147114e3          	bne	sp,t2,9a4 <fail>

0000000000000060 <test_5>:
  60:	00500193          	addi	gp,zero,5
  64:	01000093          	addi	ra,zero,16
  68:	01e00113          	addi	sp,zero,30
  6c:	0020b033          	sltu	zero,ra,sp
  70:	00000393          	addi	t2,zero,0
  74:	127018e3          	bne	zero,t2,9a4 <fail>

0000000000000078 <test_6>:
  78:	00600193          	addi	gp,zero,6
  7c:	00f00093          	addi	ra,zero,15
  80:	0f000113          	addi	sp,zero,240
  84:	0020c733          	xor	a4,ra,sp
  88:	0ff00393          	addi	t2,zero,255
  8c:	10771ce3          	bne	a4,t2,9a4 <fail>

0000000000000090 <test_7>:
  90:	00700193          	addi	gp,zero,7
  94:	02000093          	addi	ra,zero,32
  98:	0000d133          	srl	sp,ra,zero
  9c:	02000393          	addi	t2,zero,32
  a0:	107112e3          	bne	sp,t2,9a4 <fail>

00000000000000a4 <test_8>:
  a4:	00800193          	addi	gp,zero,8
  a8:	00f00093          	addi	ra,zero,15
  ac:	40105133          	sra	sp,zero,ra
  b0:	00000393          	addi	t2,zero,0
  b4:	0e7118e3          	bne	sp,t2,9a4 <fail>

00000000000000b8 <test_9>:
  b8:	00900193          	addi	gp,zero,9
  bc:	00000093          	addi	ra,zero,0
  c0:	00f00113          	addi	sp,zero,15
  c4:	0020e0b3          	or	ra,ra,sp
  c8:	00f00393          	addi	t2,zero,15
  cc:	0c709ce3          	bne	ra,t2,9a4 <fail>

00000000000000d0 <test_10>:
  d0:	00a00193          	addi	gp,zero,10
  d4:	01100093          	addi	ra,zero,17
  d8:	02200113          	addi	sp,zero,34
  dc:	0020f033          	and	zero,ra,sp
  e0:	00000393          	addi	t2,zero,0
  e4:	0c7010e3          	bne	zero,t2,9a4 <fail>

00000000000000e8 <test_11>:
  e8:	00b00193          	addi	gp,zero,11
  ec:	00300093          	addi	ra,zero,3
  f0:	00708713          	addi	a4,ra,7
  f4:	00a00393          	addi	t2,zero,10
  f8:	0a7716e3          	bne	a4,t2,9a4 <fail>

00000000000000fc <test_12>:
  fc:	00c00193          	addi	gp,zero,12
 100:	00b00093          	addi	ra,zero,11
 104:	00d0a093          	slti	ra,ra,13
 108:	00100393          	addi	t2,zero,1
 10c:	08709ce3          	bne	ra,t2,9a4 <fail>

0000000000000110 <test_13>:
 110:	00d00193          	addi	gp,zero,13
 114:	00300093          	addi	ra,zero,3
 118:	0070b713          	sltiu	a4,ra,7
 11c:	00100393          	addi	t2,zero,1
 120:	087712e3          	bne	a4,t2,9a4 <fail>

0000000000000124 <test_14>:
 124:	00e00193          	addi	gp,zero,14
 128:	00b00093          	addi	ra,zero,11
 12c:	00d0b093          	sltiu	ra,ra,13
 130:	00100393          	addi	t2,zero,1
 134:	067098e3          	bne	ra,t2,9a4 <fail>

0000000000000138 <test_15>:
 138:	00f00193          	addi	gp,zero,15
 13c:	00000093          	addi	ra,zero,0
 140:	00f0c093          	xori	ra,ra,15
 144:	00f00393          	addi	t2,zero,15
 148:	04709ee3          	bne	ra,t2,9a4 <fail>

000000000000014c <test_16>:
 14c:	01000193          	addi	gp,zero,16
 150:	0ff00093          	addi	ra,zero,255
 154:	00f0e713          	ori	a4,ra,15
 158:	0ff00393          	addi	t2,zero,255
 15c:	047714e3          	bne	a4,t2,9a4 <fail>

0000000000000160 <test_17>:
 160:	01100193          	addi	gp,zero,17
 164:	00f00093          	addi	ra,zero,15
 168:	0f00f713          	andi	a4,ra,240
 16c:	00000393          	addi	t2,zero,0
 170:	02771ae3          	bne	a4,t2,9a4 <fail>

0000000000000174 <test_18>:
 174:	01200193          	addi	gp,zero,18
 178:	00100093          	addi	ra,zero,1
 17c:	00e09713          	slli	a4,ra,0xe
 180:	000043b7          	lui	t2,0x4
 184:	027710e3          	bne	a4,t2,9a4 <fail>

0000000000000188 <test_19>:
 188:	01300193          	addi	gp,zero,19
 18c:	20f00093          	addi	ra,zero,527
 190:	00e0d713          	srli	a4,ra,0xe
 194:	00000393          	addi	t2,zero,0
 198:	007716e3          	bne	a4,t2,9a4 <fail>

000000000000019c <test_20>:
 19c:	01400193          	addi	gp,zero,20
 1a0:	18100093          	addi	ra,zero,385
 1a4:	4010d713          	srai	a4,ra,0x1
 1a8:	0c000393          	addi	t2,zero,192
 1ac:	7e771c63          	bne	a4,t2,9a4 <fail>

00000000000001b0 <test_21>:
 1b0:	01500193          	addi	gp,zero,21
 1b4:	0de00793          	addi	a5,zero,222
 1b8:	00001097          	auipc	ra,0x1
 1bc:	8600b083          	ld	ra,-1952(ra) # a18 <_GLOBAL_OFFSET_TABLE_+0x8>
 1c0:	fe80b703          	ld	a4,-24(ra)
 1c4:	0de00393          	addi	t2,zero,222
 1c8:	7c771e63          	bne	a4,t2,9a4 <fail>

00000000000001cc <test_22>:
 1cc:	01600193          	addi	gp,zero,22
 1d0:	00100093          	addi	ra,zero,1
 1d4:	00100113          	addi	sp,zero,1
 1d8:	00208663          	beq	ra,sp,1e4 <test_22+0x18>
 1dc:	7c301463          	bne	zero,gp,9a4 <fail>
 1e0:	00301663          	bne	zero,gp,1ec <test_23>
 1e4:	fe208ee3          	beq	ra,sp,1e0 <test_22+0x14>
 1e8:	7a301e63          	bne	zero,gp,9a4 <fail>

00000000000001ec <test_23>:
 1ec:	01700193          	addi	gp,zero,23
 1f0:	fff00093          	addi	ra,zero,-1
 1f4:	00100113          	addi	sp,zero,1
 1f8:	00208463          	beq	ra,sp,200 <test_23+0x14>
 1fc:	00301463          	bne	zero,gp,204 <test_23+0x18>
 200:	7a301263          	bne	zero,gp,9a4 <fail>
 204:	fe208ee3          	beq	ra,sp,200 <test_23+0x14>

0000000000000208 <test_24>:
 208:	01800193          	addi	gp,zero,24
 20c:	00100093          	addi	ra,zero,1
 210:	fff00113          	addi	sp,zero,-1
 214:	00209663          	bne	ra,sp,220 <test_24+0x18>
 218:	78301663          	bne	zero,gp,9a4 <fail>
 21c:	00301663          	bne	zero,gp,228 <test_25>
 220:	fe209ee3          	bne	ra,sp,21c <test_24+0x14>
 224:	78301063          	bne	zero,gp,9a4 <fail>

0000000000000228 <test_25>:
 228:	01900193          	addi	gp,zero,25
 22c:	fff00093          	addi	ra,zero,-1
 230:	fff00113          	addi	sp,zero,-1
 234:	00209463          	bne	ra,sp,23c <test_25+0x14>
 238:	00301463          	bne	zero,gp,240 <test_25+0x18>
 23c:	76301463          	bne	zero,gp,9a4 <fail>
 240:	fe209ee3          	bne	ra,sp,23c <test_25+0x14>

0000000000000244 <test_26>:
 244:	01a00193          	addi	gp,zero,26
 248:	ffe00093          	addi	ra,zero,-2
 24c:	fff00113          	addi	sp,zero,-1
 250:	0020c663          	blt	ra,sp,25c <test_26+0x18>
 254:	74301863          	bne	zero,gp,9a4 <fail>
 258:	00301663          	bne	zero,gp,264 <test_27>
 25c:	fe20cee3          	blt	ra,sp,258 <test_26+0x14>
 260:	74301263          	bne	zero,gp,9a4 <fail>

0000000000000264 <test_27>:
 264:	01b00193          	addi	gp,zero,27
 268:	00100093          	addi	ra,zero,1
 26c:	ffe00113          	addi	sp,zero,-2
 270:	0020c463          	blt	ra,sp,278 <test_27+0x14>
 274:	00301463          	bne	zero,gp,27c <test_27+0x18>
 278:	72301663          	bne	zero,gp,9a4 <fail>
 27c:	fe20cee3          	blt	ra,sp,278 <test_27+0x14>

0000000000000280 <test_28>:
 280:	01c00193          	addi	gp,zero,28
 284:	00100093          	addi	ra,zero,1
 288:	00000113          	addi	sp,zero,0
 28c:	0020d663          	bge	ra,sp,298 <test_28+0x18>
 290:	70301a63          	bne	zero,gp,9a4 <fail>
 294:	00301663          	bne	zero,gp,2a0 <test_29>
 298:	fe20dee3          	bge	ra,sp,294 <test_28+0x14>
 29c:	70301463          	bne	zero,gp,9a4 <fail>

00000000000002a0 <test_29>:
 2a0:	01d00193          	addi	gp,zero,29
 2a4:	fff00093          	addi	ra,zero,-1
 2a8:	00100113          	addi	sp,zero,1
 2ac:	0020d463          	bge	ra,sp,2b4 <test_29+0x14>
 2b0:	00301463          	bne	zero,gp,2b8 <test_29+0x18>
 2b4:	6e301863          	bne	zero,gp,9a4 <fail>
 2b8:	fe20dee3          	bge	ra,sp,2b4 <test_29+0x14>

00000000000002bc <test_30>:
 2bc:	01e00193          	addi	gp,zero,30
 2c0:	00100093          	addi	ra,zero,1
 2c4:	00000113          	addi	sp,zero,0
 2c8:	0020f663          	bgeu	ra,sp,2d4 <test_30+0x18>
 2cc:	6c301c63          	bne	zero,gp,9a4 <fail>
 2d0:	00301663          	bne	zero,gp,2dc <test_31>
 2d4:	fe20fee3          	bgeu	ra,sp,2d0 <test_30+0x14>
 2d8:	6c301663          	bne	zero,gp,9a4 <fail>

00000000000002dc <test_31>:
 2dc:	01f00193          	addi	gp,zero,31
 2e0:	ffe00093          	addi	ra,zero,-2
 2e4:	fff00113          	addi	sp,zero,-1
 2e8:	0020f463          	bgeu	ra,sp,2f0 <test_31+0x14>
 2ec:	00301463          	bne	zero,gp,2f4 <test_31+0x18>
 2f0:	6a301a63          	bne	zero,gp,9a4 <fail>
 2f4:	fe20fee3          	bgeu	ra,sp,2f0 <test_31+0x14>

00000000000002f8 <test_32>:
 2f8:	02000193          	addi	gp,zero,32
 2fc:	00000093          	addi	ra,zero,0
 300:	fff00113          	addi	sp,zero,-1
 304:	0020e663          	bltu	ra,sp,310 <test_32+0x18>
 308:	68301e63          	bne	zero,gp,9a4 <fail>
 30c:	00301663          	bne	zero,gp,318 <test_33>
 310:	fe20eee3          	bltu	ra,sp,30c <test_32+0x14>
 314:	68301863          	bne	zero,gp,9a4 <fail>

0000000000000318 <test_33>:
 318:	02100193          	addi	gp,zero,33
 31c:	fff00093          	addi	ra,zero,-1
 320:	00000113          	addi	sp,zero,0
 324:	0020e463          	bltu	ra,sp,32c <test_33+0x14>
 328:	00301463          	bne	zero,gp,330 <test_33+0x18>
 32c:	66301c63          	bne	zero,gp,9a4 <fail>
 330:	fe20eee3          	bltu	ra,sp,32c <test_33+0x14>

0000000000000334 <test_34>:
 334:	02200193          	addi	gp,zero,34
 338:	00000097          	auipc	ra,0x0
 33c:	6e80b083          	ld	ra,1768(ra) # a20 <_GLOBAL_OFFSET_TABLE_+0x10>
 340:	0ab00113          	addi	sp,zero,171
 344:	00000797          	auipc	a5,0x0
 348:	72c7b783          	ld	a5,1836(a5) # a70 <_GLOBAL_OFFSET_TABLE_+0x60>
 34c:	0020b423          	sd	sp,8(ra)
 350:	0080b703          	ld	a4,8(ra)
 354:	0080006f          	jal	zero,35c <test_34+0x28>
 358:	00010713          	addi	a4,sp,0
 35c:	0ab00393          	addi	t2,zero,171
 360:	64771263          	bne	a4,t2,9a4 <fail>

0000000000000364 <test_35>:
 364:	02300193          	addi	gp,zero,35
 368:	00000097          	auipc	ra,0x0
 36c:	6c00b083          	ld	ra,1728(ra) # a28 <_GLOBAL_OFFSET_TABLE_+0x18>
 370:	07800113          	addi	sp,zero,120
 374:	00000797          	auipc	a5,0x0
 378:	7047b783          	ld	a5,1796(a5) # a78 <_GLOBAL_OFFSET_TABLE_+0x68>
 37c:	fe20bc23          	sd	sp,-8(ra)
 380:	ff80b703          	ld	a4,-8(ra)
 384:	0080006f          	jal	zero,38c <test_35+0x28>
 388:	00010713          	addi	a4,sp,0
 38c:	07800393          	addi	t2,zero,120
 390:	60771a63          	bne	a4,t2,9a4 <fail>

0000000000000394 <test_36>:
 394:	02400193          	addi	gp,zero,36
 398:	800000b7          	lui	ra,0x80000
 39c:	4140d093          	srai	ra,ra,0x14
 3a0:	80000393          	addi	t2,zero,-2048
 3a4:	60709063          	bne	ra,t2,9a4 <fail>

00000000000003a8 <test_37>:
 3a8:	02500193          	addi	gp,zero,37
 3ac:	00000013          	addi	zero,zero,0
 3b0:	00000517          	auipc	a0,0x0
 3b4:	c2450513          	addi	a0,a0,-988 # ffffffffffffffd4 <.got.plt+0xfffffffffffff53c>
 3b8:	004005ef          	jal	a1,3bc <test_37+0x14>
 3bc:	40b50533          	sub	a0,a0,a1
 3c0:	c1800393          	addi	t2,zero,-1000
 3c4:	5e751063          	bne	a0,t2,9a4 <fail>

00000000000003c8 <test_38>:
 3c8:	02600193          	addi	gp,zero,38
 3cc:	00000093          	addi	ra,zero,0
 3d0:	0100026f          	jal	tp,3e0 <target_38>

00000000000003d4 <linkaddr_38>:
 3d4:	00000013          	addi	zero,zero,0
 3d8:	00000013          	addi	zero,zero,0
 3dc:	5c80006f          	jal	zero,9a4 <fail>

00000000000003e0 <target_38>:
 3e0:	00000117          	auipc	sp,0x0
 3e4:	65013103          	ld	sp,1616(sp) # a30 <_GLOBAL_OFFSET_TABLE_+0x20>
 3e8:	5a411e63          	bne	sp,tp,9a4 <fail>

00000000000003ec <test_39>:
 3ec:	02700193          	addi	gp,zero,39
 3f0:	ff000793          	addi	a5,zero,-16
 3f4:	00000097          	auipc	ra,0x0
 3f8:	6440b083          	ld	ra,1604(ra) # a38 <_GLOBAL_OFFSET_TABLE_+0x28>
 3fc:	00208703          	lb	a4,2(ra)
 400:	ff000393          	addi	t2,zero,-16
 404:	5a771063          	bne	a4,t2,9a4 <fail>

0000000000000408 <test_40>:
 408:	02800193          	addi	gp,zero,40
 40c:	f0000793          	addi	a5,zero,-256
 410:	00000097          	auipc	ra,0x0
 414:	6300b083          	ld	ra,1584(ra) # a40 <_GLOBAL_OFFSET_TABLE_+0x30>
 418:	00209703          	lh	a4,2(ra)
 41c:	f0000393          	addi	t2,zero,-256
 420:	58771263          	bne	a4,t2,9a4 <fail>

0000000000000424 <test_41>:
 424:	02900193          	addi	gp,zero,41
 428:	0ff017b7          	lui	a5,0xff01
 42c:	ff07879b          	addiw	a5,a5,-16 # ff00ff0 <.got.plt+0xff00558>
 430:	00000097          	auipc	ra,0x0
 434:	6180b083          	ld	ra,1560(ra) # a48 <_GLOBAL_OFFSET_TABLE_+0x38>
 438:	0080a703          	lw	a4,8(ra)
 43c:	0ff013b7          	lui	t2,0xff01
 440:	ff03839b          	addiw	t2,t2,-16 # ff00ff0 <.got.plt+0xff00558>
 444:	56771063          	bne	a4,t2,9a4 <fail>

0000000000000448 <test_42>:
 448:	02a00193          	addi	gp,zero,42
 44c:	00f00793          	addi	a5,zero,15
 450:	00000097          	auipc	ra,0x0
 454:	5e80b083          	ld	ra,1512(ra) # a38 <_GLOBAL_OFFSET_TABLE_+0x28>
 458:	0030c703          	lbu	a4,3(ra)
 45c:	00f00393          	addi	t2,zero,15
 460:	54771263          	bne	a4,t2,9a4 <fail>

0000000000000464 <test_43>:
 464:	02b00193          	addi	gp,zero,43
 468:	0000f7b7          	lui	a5,0xf
 46c:	00f7879b          	addiw	a5,a5,15 # f00f <.got.plt+0xe577>
 470:	00000097          	auipc	ra,0x0
 474:	5d00b083          	ld	ra,1488(ra) # a40 <_GLOBAL_OFFSET_TABLE_+0x30>
 478:	0060d703          	lhu	a4,6(ra)
 47c:	0000f3b7          	lui	t2,0xf
 480:	00f3839b          	addiw	t2,t2,15 # f00f <.got.plt+0xe577>
 484:	52771063          	bne	a4,t2,9a4 <fail>

0000000000000488 <test_44>:
 488:	02c00193          	addi	gp,zero,44
 48c:	00ff07b7          	lui	a5,0xff0
 490:	0ff7879b          	addiw	a5,a5,255 # ff00ff <.got.plt+0xfef667>
 494:	00000097          	auipc	ra,0x0
 498:	5bc0b083          	ld	ra,1468(ra) # a50 <_GLOBAL_OFFSET_TABLE_+0x40>
 49c:	ff40e703          	lwu	a4,-12(ra)
 4a0:	00ff03b7          	lui	t2,0xff0
 4a4:	0ff3839b          	addiw	t2,t2,255 # ff00ff <.got.plt+0xfef667>
 4a8:	4e771e63          	bne	a4,t2,9a4 <fail>

00000000000004ac <test_45>:
 4ac:	02d00193          	addi	gp,zero,45
 4b0:	00000097          	auipc	ra,0x0
 4b4:	5880b083          	ld	ra,1416(ra) # a38 <_GLOBAL_OFFSET_TABLE_+0x28>
 4b8:	fa000113          	addi	sp,zero,-96
 4bc:	00000797          	auipc	a5,0x0
 4c0:	5c47b783          	ld	a5,1476(a5) # a80 <_GLOBAL_OFFSET_TABLE_+0x70>
 4c4:	00208123          	sb	sp,2(ra)
 4c8:	00208703          	lb	a4,2(ra)
 4cc:	0080006f          	jal	zero,4d4 <test_45+0x28>
 4d0:	00010713          	addi	a4,sp,0
 4d4:	fa000393          	addi	t2,zero,-96
 4d8:	4c771663          	bne	a4,t2,9a4 <fail>

00000000000004dc <test_46>:
 4dc:	02e00193          	addi	gp,zero,46
 4e0:	00000097          	auipc	ra,0x0
 4e4:	5780b083          	ld	ra,1400(ra) # a58 <_GLOBAL_OFFSET_TABLE_+0x48>
 4e8:	ffffa137          	lui	sp,0xffffa
 4ec:	00a1011b          	addiw	sp,sp,10 # ffffffffffffa00a <.got.plt+0xffffffffffff9572>
 4f0:	00000797          	auipc	a5,0x0
 4f4:	5987b783          	ld	a5,1432(a5) # a88 <_GLOBAL_OFFSET_TABLE_+0x78>
 4f8:	fe209d23          	sh	sp,-6(ra)
 4fc:	ffa09703          	lh	a4,-6(ra)
 500:	0080006f          	jal	zero,508 <test_46+0x2c>
 504:	00010713          	addi	a4,sp,0
 508:	ffffa3b7          	lui	t2,0xffffa
 50c:	00a3839b          	addiw	t2,t2,10 # ffffffffffffa00a <.got.plt+0xffffffffffff9572>
 510:	48771a63          	bne	a4,t2,9a4 <fail>

0000000000000514 <test_47>:
 514:	02f00193          	addi	gp,zero,47
 518:	00000097          	auipc	ra,0x0
 51c:	5380b083          	ld	ra,1336(ra) # a50 <_GLOBAL_OFFSET_TABLE_+0x40>
 520:	a00aa137          	lui	sp,0xa00aa
 524:	00a1011b          	addiw	sp,sp,10 # ffffffffa00aa00a <.got.plt+0xffffffffa00a9572>
 528:	00000797          	auipc	a5,0x0
 52c:	5687b783          	ld	a5,1384(a5) # a90 <_GLOBAL_OFFSET_TABLE_+0x80>
 530:	fe20aa23          	sw	sp,-12(ra)
 534:	ff40a703          	lw	a4,-12(ra)
 538:	0080006f          	jal	zero,540 <test_47+0x2c>
 53c:	00010713          	addi	a4,sp,0
 540:	a00aa3b7          	lui	t2,0xa00aa
 544:	00a3839b          	addiw	t2,t2,10 # ffffffffa00aa00a <.got.plt+0xffffffffa00a9572>
 548:	44771e63          	bne	a4,t2,9a4 <fail>

000000000000054c <test_48>:
 54c:	03000193          	addi	gp,zero,48
 550:	fff00093          	addi	ra,zero,-1
 554:	01f0971b          	slliw	a4,ra,0x1f
 558:	800003b7          	lui	t2,0x80000
 55c:	44771463          	bne	a4,t2,9a4 <fail>

0000000000000560 <test_49>:
 560:	03100193          	addi	gp,zero,49
 564:	212120b7          	lui	ra,0x21212
 568:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 56c:	0010d71b          	srliw	a4,ra,0x1
 570:	109093b7          	lui	t2,0x10909
 574:	0903839b          	addiw	t2,t2,144 # 10909090 <.got.plt+0x109085f8>
 578:	42771663          	bne	a4,t2,9a4 <fail>

000000000000057c <test_50>:
 57c:	03200193          	addi	gp,zero,50
 580:	818180b7          	lui	ra,0x81818
 584:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <.got.plt+0xffffffff818176e9>
 588:	40e0d71b          	sraiw	a4,ra,0xe
 58c:	fffe03b7          	lui	t2,0xfffe0
 590:	6063839b          	addiw	t2,t2,1542 # fffffffffffe0606 <.got.plt+0xfffffffffffdfb6e>
 594:	40771863          	bne	a4,t2,9a4 <fail>

0000000000000598 <test_51>:
 598:	03300193          	addi	gp,zero,51
 59c:	800000b7          	lui	ra,0x80000
 5a0:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <.got.plt+0x7ffff567>
 5a4:	00008137          	lui	sp,0x8
 5a8:	fff1011b          	addiw	sp,sp,-1 # 7fff <.got.plt+0x7567>
 5ac:	0020873b          	addw	a4,ra,sp
 5b0:	800083b7          	lui	t2,0x80008
 5b4:	ffe3839b          	addiw	t2,t2,-2 # ffffffff80007ffe <.got.plt+0xffffffff80007566>
 5b8:	3e771663          	bne	a4,t2,9a4 <fail>

00000000000005bc <test_52>:
 5bc:	03400193          	addi	gp,zero,52
 5c0:	800000b7          	lui	ra,0x80000
 5c4:	00000113          	addi	sp,zero,0
 5c8:	4020873b          	subw	a4,ra,sp
 5cc:	800003b7          	lui	t2,0x80000
 5d0:	3c771a63          	bne	a4,t2,9a4 <fail>

00000000000005d4 <test_53>:
 5d4:	03500193          	addi	gp,zero,53
 5d8:	212120b7          	lui	ra,0x21212
 5dc:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 5e0:	fee00113          	addi	sp,zero,-18
 5e4:	0020973b          	sllw	a4,ra,sp
 5e8:	484843b7          	lui	t2,0x48484
 5ec:	3a771c63          	bne	a4,t2,9a4 <fail>

00000000000005f0 <test_54>:
 5f0:	03600193          	addi	gp,zero,54
 5f4:	212120b7          	lui	ra,0x21212
 5f8:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 5fc:	fe100113          	addi	sp,zero,-31
 600:	0020d73b          	srlw	a4,ra,sp
 604:	109093b7          	lui	t2,0x10909
 608:	0903839b          	addiw	t2,t2,144 # 10909090 <.got.plt+0x109085f8>
 60c:	38771c63          	bne	a4,t2,9a4 <fail>

0000000000000610 <test_55>:
 610:	03700193          	addi	gp,zero,55
 614:	818180b7          	lui	ra,0x81818
 618:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <.got.plt+0xffffffff818176e9>
 61c:	fe700113          	addi	sp,zero,-25
 620:	4020d73b          	sraw	a4,ra,sp
 624:	ff0303b7          	lui	t2,0xff030
 628:	3033839b          	addiw	t2,t2,771 # ffffffffff030303 <.got.plt+0xffffffffff02f86b>
 62c:	36771c63          	bne	a4,t2,9a4 <fail>

0000000000000630 <test_56>:
 630:	03800193          	addi	gp,zero,56
 634:	00000297          	auipc	t0,0x0
 638:	42c2b283          	ld	t0,1068(t0) # a60 <_GLOBAL_OFFSET_TABLE_+0x50>
 63c:	000282e7          	jalr	t0,0(t0)

0000000000000640 <linkaddr_56>:
 640:	3640006f          	jal	zero,9a4 <fail>

0000000000000644 <target_56>:
 644:	00000317          	auipc	t1,0x0
 648:	42433303          	ld	t1,1060(t1) # a68 <_GLOBAL_OFFSET_TABLE_+0x58>
 64c:	34629c63          	bne	t0,t1,9a4 <fail>

0000000000000650 <test_57>:
 650:	03900193          	addi	gp,zero,57
 654:	800000b7          	lui	ra,0x80000
 658:	00008137          	lui	sp,0x8
 65c:	fff1011b          	addiw	sp,sp,-1 # 7fff <.got.plt+0x7567>
 660:	00208733          	add	a4,ra,sp
 664:	800083b7          	lui	t2,0x80008
 668:	fff3839b          	addiw	t2,t2,-1 # ffffffff80007fff <.got.plt+0xffffffff80007567>
 66c:	32771c63          	bne	a4,t2,9a4 <fail>

0000000000000670 <test_58>:
 670:	03a00193          	addi	gp,zero,58
 674:	800000b7          	lui	ra,0x80000
 678:	7ff08713          	addi	a4,ra,2047 # ffffffff800007ff <.got.plt+0xffffffff7ffffd67>
 67c:	800003b7          	lui	t2,0x80000
 680:	7ff3839b          	addiw	t2,t2,2047 # ffffffff800007ff <.got.plt+0xffffffff7ffffd67>
 684:	32771063          	bne	a4,t2,9a4 <fail>

0000000000000688 <test_59>:
 688:	03b00193          	addi	gp,zero,59
 68c:	800000b7          	lui	ra,0x80000
 690:	8000871b          	addiw	a4,ra,-2048 # 7ffff800 <.got.plt+0x7fffed68>
 694:	800003b7          	lui	t2,0x80000
 698:	8003839b          	addiw	t2,t2,-2048 # 7ffff800 <.got.plt+0x7fffed68>
 69c:	30771463          	bne	a4,t2,9a4 <fail>

00000000000006a0 <test_60>:
 6a0:	03c00193          	addi	gp,zero,60
 6a4:	800000b7          	lui	ra,0x80000
 6a8:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <.got.plt+0x7ffff567>
 6ac:	00000113          	addi	sp,zero,0
 6b0:	0020873b          	addw	a4,ra,sp
 6b4:	800003b7          	lui	t2,0x80000
 6b8:	fff3839b          	addiw	t2,t2,-1 # 7fffffff <.got.plt+0x7ffff567>
 6bc:	2e771463          	bne	a4,t2,9a4 <fail>

00000000000006c0 <test_61>:
 6c0:	03d00193          	addi	gp,zero,61
 6c4:	000f00b7          	lui	ra,0xf0
 6c8:	0ff0809b          	addiw	ra,ra,255 # f00ff <.got.plt+0xef667>
 6cc:	00c09093          	slli	ra,ra,0xc
 6d0:	00f08093          	addi	ra,ra,15
 6d4:	000f1137          	lui	sp,0xf1
 6d8:	f0f1011b          	addiw	sp,sp,-241 # f0f0f <.got.plt+0xf0477>
 6dc:	00c11113          	slli	sp,sp,0xc
 6e0:	0f010113          	addi	sp,sp,240
 6e4:	0020f733          	and	a4,ra,sp
 6e8:	000f03b7          	lui	t2,0xf0
 6ec:	00f3839b          	addiw	t2,t2,15 # f000f <.got.plt+0xef577>
 6f0:	00c39393          	slli	t2,t2,0xc
 6f4:	2a771863          	bne	a4,t2,9a4 <fail>

00000000000006f8 <test_62>:
 6f8:	03e00193          	addi	gp,zero,62
 6fc:	000f00b7          	lui	ra,0xf0
 700:	0ff0809b          	addiw	ra,ra,255 # f00ff <.got.plt+0xef667>
 704:	00c09093          	slli	ra,ra,0xc
 708:	00f08093          	addi	ra,ra,15
 70c:	0f00f713          	andi	a4,ra,240
 710:	00000393          	addi	t2,zero,0
 714:	28771863          	bne	a4,t2,9a4 <fail>

0000000000000718 <test_63>:
 718:	03f00193          	addi	gp,zero,63
 71c:	00000013          	addi	zero,zero,0
 720:	ffffe517          	auipc	a0,0xffffe
 724:	8fc50513          	addi	a0,a0,-1796 # ffffffffffffe01c <.got.plt+0xffffffffffffd584>
 728:	004005ef          	jal	a1,72c <test_63+0x14>
 72c:	40b50533          	sub	a0,a0,a1
 730:	ffffe3b7          	lui	t2,0xffffe
 734:	8f03839b          	addiw	t2,t2,-1808 # ffffffffffffd8f0 <.got.plt+0xffffffffffffce58>
 738:	26751663          	bne	a0,t2,9a4 <fail>

000000000000073c <test_64>:
 73c:	04000193          	addi	gp,zero,64
 740:	00000213          	addi	tp,zero,0
 744:	f00ff0b7          	lui	ra,0xf00ff
 748:	00f0809b          	addiw	ra,ra,15 # fffffffff00ff00f <.got.plt+0xfffffffff00fe577>
 74c:	0f00c713          	xori	a4,ra,240
 750:	00000013          	addi	zero,zero,0
 754:	00000013          	addi	zero,zero,0
 758:	00070313          	addi	t1,a4,0
 75c:	00120213          	addi	tp,tp,1 # 1 <_start+0x1>
 760:	00200293          	addi	t0,zero,2
 764:	fe5210e3          	bne	tp,t0,744 <test_64+0x8>
 768:	f00ff3b7          	lui	t2,0xf00ff
 76c:	0ff3839b          	addiw	t2,t2,255 # fffffffff00ff0ff <.got.plt+0xfffffffff00fe667>
 770:	22731a63          	bne	t1,t2,9a4 <fail>

0000000000000774 <test_65>:
 774:	04100193          	addi	gp,zero,65
 778:	000f00b7          	lui	ra,0xf0
 77c:	0ff0809b          	addiw	ra,ra,255 # f00ff <.got.plt+0xef667>
 780:	00c09093          	slli	ra,ra,0xc
 784:	00f08093          	addi	ra,ra,15
 788:	000f1137          	lui	sp,0xf1
 78c:	f0f1011b          	addiw	sp,sp,-241 # f0f0f <.got.plt+0xf0477>
 790:	00c11113          	slli	sp,sp,0xc
 794:	0f010113          	addi	sp,sp,240
 798:	0020c733          	xor	a4,ra,sp
 79c:	00ff03b7          	lui	t2,0xff0
 7a0:	0ff3839b          	addiw	t2,t2,255 # ff00ff <.got.plt+0xfef667>
 7a4:	20771063          	bne	a4,t2,9a4 <fail>

00000000000007a8 <test_66>:
 7a8:	04200193          	addi	gp,zero,66
 7ac:	800000b7          	lui	ra,0x80000
 7b0:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <.got.plt+0x7ffff567>
 7b4:	ffff8137          	lui	sp,0xffff8
 7b8:	4020873b          	subw	a4,ra,sp
 7bc:	800083b7          	lui	t2,0x80008
 7c0:	fff3839b          	addiw	t2,t2,-1 # ffffffff80007fff <.got.plt+0xffffffff80007567>
 7c4:	1e771063          	bne	a4,t2,9a4 <fail>

00000000000007c8 <test_67>:
 7c8:	04300193          	addi	gp,zero,67
 7cc:	800000b7          	lui	ra,0x80000
 7d0:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <.got.plt+0x7ffff567>
 7d4:	ffff8137          	lui	sp,0xffff8
 7d8:	40208733          	sub	a4,ra,sp
 7dc:	000103b7          	lui	t2,0x10
 7e0:	0013839b          	addiw	t2,t2,1 # 10001 <.got.plt+0xf569>
 7e4:	00f39393          	slli	t2,t2,0xf
 7e8:	fff38393          	addi	t2,t2,-1
 7ec:	1a771c63          	bne	a4,t2,9a4 <fail>

00000000000007f0 <test_68>:
 7f0:	04400193          	addi	gp,zero,68
 7f4:	212120b7          	lui	ra,0x21212
 7f8:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 7fc:	fe700113          	addi	sp,zero,-25
 800:	0020d73b          	srlw	a4,ra,sp
 804:	004243b7          	lui	t2,0x424
 808:	2423839b          	addiw	t2,t2,578 # 424242 <.got.plt+0x4237aa>
 80c:	18771c63          	bne	a4,t2,9a4 <fail>

0000000000000810 <test_69>:
 810:	04500193          	addi	gp,zero,69
 814:	fff120b7          	lui	ra,0xfff12
 818:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <.got.plt+0xfffffffffff118ad>
 81c:	00c09093          	slli	ra,ra,0xc
 820:	67808093          	addi	ra,ra,1656
 824:	00400113          	addi	sp,zero,4
 828:	0020d73b          	srlw	a4,ra,sp
 82c:	012343b7          	lui	t2,0x1234
 830:	5673839b          	addiw	t2,t2,1383 # 1234567 <.got.plt+0x1233acf>
 834:	16771863          	bne	a4,t2,9a4 <fail>

0000000000000838 <test_70>:
 838:	04600193          	addi	gp,zero,70
 83c:	fff120b7          	lui	ra,0xfff12
 840:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <.got.plt+0xfffffffffff118ad>
 844:	00c09093          	slli	ra,ra,0xc
 848:	67808093          	addi	ra,ra,1656
 84c:	0040d71b          	srliw	a4,ra,0x4
 850:	012343b7          	lui	t2,0x1234
 854:	5673839b          	addiw	t2,t2,1383 # 1234567 <.got.plt+0x1233acf>
 858:	14771663          	bne	a4,t2,9a4 <fail>

000000000000085c <test_71>:
 85c:	04700193          	addi	gp,zero,71
 860:	212120b7          	lui	ra,0x21212
 864:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 868:	01f0d713          	srli	a4,ra,0x1f
 86c:	00000393          	addi	t2,zero,0
 870:	12771a63          	bne	a4,t2,9a4 <fail>

0000000000000874 <test_72>:
 874:	04800193          	addi	gp,zero,72
 878:	212120b7          	lui	ra,0x21212
 87c:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 880:	fc100113          	addi	sp,zero,-63
 884:	0020d733          	srl	a4,ra,sp
 888:	109093b7          	lui	t2,0x10909
 88c:	0903839b          	addiw	t2,t2,144 # 10909090 <.got.plt+0x109085f8>
 890:	10771a63          	bne	a4,t2,9a4 <fail>

0000000000000894 <test_73>:
 894:	04900193          	addi	gp,zero,73
 898:	818180b7          	lui	ra,0x81818
 89c:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <.got.plt+0xffffffff818176e9>
 8a0:	00e00113          	addi	sp,zero,14
 8a4:	4020d73b          	sraw	a4,ra,sp
 8a8:	fffe03b7          	lui	t2,0xfffe0
 8ac:	6063839b          	addiw	t2,t2,1542 # fffffffffffe0606 <.got.plt+0xfffffffffffdfb6e>
 8b0:	0e771a63          	bne	a4,t2,9a4 <fail>

00000000000008b4 <test_74>:
 8b4:	04a00193          	addi	gp,zero,74
 8b8:	818180b7          	lui	ra,0x81818
 8bc:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <.got.plt+0xffffffff818176e9>
 8c0:	fc100113          	addi	sp,zero,-63
 8c4:	4020d733          	sra	a4,ra,sp
 8c8:	c0c0c3b7          	lui	t2,0xc0c0c
 8cc:	0c03839b          	addiw	t2,t2,192 # ffffffffc0c0c0c0 <.got.plt+0xffffffffc0c0b628>
 8d0:	0c771a63          	bne	a4,t2,9a4 <fail>

00000000000008d4 <test_75>:
 8d4:	04b00193          	addi	gp,zero,75
 8d8:	800000b7          	lui	ra,0x80000
 8dc:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <.got.plt+0x7ffff567>
 8e0:	00020137          	lui	sp,0x20
 8e4:	fff1011b          	addiw	sp,sp,-1 # 1ffff <.got.plt+0x1f567>
 8e8:	00f11113          	slli	sp,sp,0xf
 8ec:	0020b733          	sltu	a4,ra,sp
 8f0:	00100393          	addi	t2,zero,1
 8f4:	0a771863          	bne	a4,t2,9a4 <fail>

00000000000008f8 <test_76>:
 8f8:	04c00193          	addi	gp,zero,76
 8fc:	f00ff0b7          	lui	ra,0xf00ff
 900:	00f0809b          	addiw	ra,ra,15 # fffffffff00ff00f <.got.plt+0xfffffffff00fe577>
 904:	0f00e713          	ori	a4,ra,240
 908:	f00ff3b7          	lui	t2,0xf00ff
 90c:	0ff3839b          	addiw	t2,t2,255 # fffffffff00ff0ff <.got.plt+0xfffffffff00fe667>
 910:	08771a63          	bne	a4,t2,9a4 <fail>

0000000000000914 <test_77>:
 914:	04d00193          	addi	gp,zero,77
 918:	212120b7          	lui	ra,0x21212
 91c:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 920:	fc100113          	addi	sp,zero,-63
 924:	00209733          	sll	a4,ra,sp
 928:	424243b7          	lui	t2,0x42424
 92c:	2423839b          	addiw	t2,t2,578 # 42424242 <.got.plt+0x424237aa>
 930:	06771a63          	bne	a4,t2,9a4 <fail>

0000000000000934 <test_78>:
 934:	04e00193          	addi	gp,zero,78
 938:	212120b7          	lui	ra,0x21212
 93c:	1210809b          	addiw	ra,ra,289 # 21212121 <.got.plt+0x21211689>
 940:	02b09713          	slli	a4,ra,0x2b
 944:	000123b7          	lui	t2,0x12
 948:	1213839b          	addiw	t2,t2,289 # 12121 <.got.plt+0x11689>
 94c:	02b39393          	slli	t2,t2,0x2b
 950:	04771a63          	bne	a4,t2,9a4 <fail>

0000000000000954 <test_79>:
 954:	04f00193          	addi	gp,zero,79
 958:	000990b7          	lui	ra,0x99
 95c:	3450809b          	addiw	ra,ra,837 # 99345 <.got.plt+0x988ad>
 960:	00c09093          	slli	ra,ra,0xc
 964:	67808093          	addi	ra,ra,1656
 968:	0040971b          	slliw	a4,ra,0x4
 96c:	934563b7          	lui	t2,0x93456
 970:	7803839b          	addiw	t2,t2,1920 # ffffffff93456780 <.got.plt+0xffffffff93455ce8>
 974:	02771863          	bne	a4,t2,9a4 <fail>

0000000000000978 <test_80>:
 978:	05000193          	addi	gp,zero,80
 97c:	fff120b7          	lui	ra,0xfff12
 980:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <.got.plt+0xfffffffffff118ad>
 984:	00c09093          	slli	ra,ra,0xc
 988:	67808093          	addi	ra,ra,1656
 98c:	00400113          	addi	sp,zero,4
 990:	0020973b          	sllw	a4,ra,sp
 994:	234563b7          	lui	t2,0x23456
 998:	7803839b          	addiw	t2,t2,1920 # 23456780 <.got.plt+0x23455ce8>
 99c:	00771463          	bne	a4,t2,9a4 <fail>
 9a0:	00301663          	bne	zero,gp,9ac <pass>

00000000000009a4 <fail>:
 9a4:	00100093          	addi	ra,zero,1
 9a8:	c0001073          	unimp

00000000000009ac <pass>:
 9ac:	00000093          	addi	ra,zero,0
 9b0:	c0001073          	unimp
 9b4:	0000                	.2byte	0x0
	...

Disassembly of section .data:

00000000000009c0 <tdat1LD>:
 9c0:	00de                	.2byte	0xde
 9c2:	0000                	.2byte	0x0
 9c4:	0000                	.2byte	0x0
	...

00000000000009c8 <tdat2LD>:
 9c8:	000000ab          	.4byte	0xab
 9cc:	0000                	.2byte	0x0
	...

00000000000009d0 <tdat3LD>:
 9d0:	00cd                	.2byte	0xcd
 9d2:	0000                	.2byte	0x0
 9d4:	0000                	.2byte	0x0
	...

00000000000009d8 <tdat4LD>:
 9d8:	00ff                	.2byte	0xff
 9da:	0000                	.2byte	0x0
 9dc:	0000                	.2byte	0x0
	...

00000000000009e0 <tdat1SD>:
 9e0:	deadbeef          	jal	t4,fffffffffffdbfca <.got.plt+0xfffffffffffdb532>
 9e4:	deadbeef          	jal	t4,fffffffffffdbfce <.got.plt+0xfffffffffffdb536>

00000000000009e8 <tdat2SD>:
 9e8:	deadbeef          	jal	t4,fffffffffffdbfd2 <.got.plt+0xfffffffffffdb53a>
 9ec:	deadbeef          	jal	t4,fffffffffffdbfd6 <.got.plt+0xfffffffffffdb53e>

00000000000009f0 <tdat1LB>:
 9f0:	                	.2byte	0xff

00000000000009f1 <tdat2LB>:
	...

00000000000009f2 <tdat3LB>:
 9f2:	                	.2byte	0xff0

00000000000009f3 <tdat4LB>:
 9f3:	          	.4byte	0xff0f

00000000000009f4 <tdat1LH>:
 9f4:	00ff                	.2byte	0xff

00000000000009f6 <tdat2LH>:
 9f6:	ff00                	.2byte	0xff00

00000000000009f8 <tdat3LH>:
 9f8:	0ff0                	.2byte	0xff0

00000000000009fa <tdat4LH>:
 9fa:	          	.4byte	0xfff00f

00000000000009fc <tdat1LW>:
 9fc:	00ff                	.2byte	0xff
 9fe:	00ff                	.2byte	0xff

0000000000000a00 <tdat2LW>:
 a00:	ff00                	.2byte	0xff00
 a02:	ff00                	.2byte	0xff00

0000000000000a04 <tdat3LW>:
 a04:	0ff0                	.2byte	0xff0
 a06:	0ff0                	.2byte	0xff0

0000000000000a08 <tdat4LW>:
 a08:	f00ff00f          	.4byte	0xf00ff00f

Disassembly of section .got:

0000000000000a10 <_GLOBAL_OFFSET_TABLE_>:
	...
 a18:	09d8                	.2byte	0x9d8
 a1a:	0000                	.2byte	0x0
 a1c:	0000                	.2byte	0x0
 a1e:	0000                	.2byte	0x0
 a20:	09e0                	.2byte	0x9e0
 a22:	0000                	.2byte	0x0
 a24:	0000                	.2byte	0x0
 a26:	0000                	.2byte	0x0
 a28:	09e8                	.2byte	0x9e8
 a2a:	0000                	.2byte	0x0
 a2c:	0000                	.2byte	0x0
 a2e:	0000                	.2byte	0x0
 a30:	03d4                	.2byte	0x3d4
 a32:	0000                	.2byte	0x0
 a34:	0000                	.2byte	0x0
 a36:	0000                	.2byte	0x0
 a38:	09f0                	.2byte	0x9f0
 a3a:	0000                	.2byte	0x0
 a3c:	0000                	.2byte	0x0
 a3e:	0000                	.2byte	0x0
 a40:	09f4                	.2byte	0x9f4
 a42:	0000                	.2byte	0x0
 a44:	0000                	.2byte	0x0
 a46:	0000                	.2byte	0x0
 a48:	09fc                	.2byte	0x9fc
 a4a:	0000                	.2byte	0x0
 a4c:	0000                	.2byte	0x0
 a4e:	0000                	.2byte	0x0
 a50:	0a08                	.2byte	0xa08
 a52:	0000                	.2byte	0x0
 a54:	0000                	.2byte	0x0
 a56:	0000                	.2byte	0x0
 a58:	09fa                	.2byte	0x9fa
 a5a:	0000                	.2byte	0x0
 a5c:	0000                	.2byte	0x0
 a5e:	0000                	.2byte	0x0
 a60:	0644                	.2byte	0x644
 a62:	0000                	.2byte	0x0
 a64:	0000                	.2byte	0x0
 a66:	0000                	.2byte	0x0
 a68:	0640                	.2byte	0x640
 a6a:	0000                	.2byte	0x0
 a6c:	0000                	.2byte	0x0
 a6e:	0000                	.2byte	0x0
 a70:	0358                	.2byte	0x358
 a72:	0000                	.2byte	0x0
 a74:	0000                	.2byte	0x0
 a76:	0000                	.2byte	0x0
 a78:	0388                	.2byte	0x388
 a7a:	0000                	.2byte	0x0
 a7c:	0000                	.2byte	0x0
 a7e:	0000                	.2byte	0x0
 a80:	04d0                	.2byte	0x4d0
 a82:	0000                	.2byte	0x0
 a84:	0000                	.2byte	0x0
 a86:	0000                	.2byte	0x0
 a88:	0504                	.2byte	0x504
 a8a:	0000                	.2byte	0x0
 a8c:	0000                	.2byte	0x0
 a8e:	0000                	.2byte	0x0
 a90:	053c                	.2byte	0x53c
 a92:	0000                	.2byte	0x0
 a94:	0000                	.2byte	0x0
	...

Disassembly of section .got.plt:

0000000000000a98 <.got.plt>:
 a98:	ffff                	.2byte	0xffff
 a9a:	ffff                	.2byte	0xffff
 a9c:	ffff                	.2byte	0xffff
 a9e:	ffff                	.2byte	0xffff
	...

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
  18:	0030                	.2byte	0x30
