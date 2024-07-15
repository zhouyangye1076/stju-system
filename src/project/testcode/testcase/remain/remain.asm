
remain/remain.elf:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <_start>:
   0:	00100193          	addi	gp,zero,1
   4:	00001097          	auipc	ra,0x1
   8:	fac08093          	addi	ra,ra,-84 # fb0 <tdat1LB>
   c:	ffa08093          	addi	ra,ra,-6
  10:	00708283          	lb	t0,7(ra)
  14:	00000393          	addi	t2,zero,0
  18:	787292e3          	bne	t0,t2,f9c <fail>

000000000000001c <test_2>:
  1c:	00200193          	addi	gp,zero,2
  20:	fff00793          	addi	a5,zero,-1
  24:	00001097          	auipc	ra,0x1
  28:	f8c08093          	addi	ra,ra,-116 # fb0 <tdat1LB>
  2c:	00008703          	lb	a4,0(ra)
  30:	fff00393          	addi	t2,zero,-1
  34:	767714e3          	bne	a4,t2,f9c <fail>

0000000000000038 <test_3>:
  38:	00300193          	addi	gp,zero,3
  3c:	00000793          	addi	a5,zero,0
  40:	00001097          	auipc	ra,0x1
  44:	f7008093          	addi	ra,ra,-144 # fb0 <tdat1LB>
  48:	00108703          	lb	a4,1(ra)
  4c:	00000393          	addi	t2,zero,0
  50:	747716e3          	bne	a4,t2,f9c <fail>

0000000000000054 <test_4>:
  54:	00400193          	addi	gp,zero,4
  58:	ff000793          	addi	a5,zero,-16
  5c:	00001097          	auipc	ra,0x1
  60:	f5408093          	addi	ra,ra,-172 # fb0 <tdat1LB>
  64:	00208703          	lb	a4,2(ra)
  68:	ff000393          	addi	t2,zero,-16
  6c:	727718e3          	bne	a4,t2,f9c <fail>

0000000000000070 <test_5>:
  70:	00500193          	addi	gp,zero,5
  74:	00f00793          	addi	a5,zero,15
  78:	00001097          	auipc	ra,0x1
  7c:	f3808093          	addi	ra,ra,-200 # fb0 <tdat1LB>
  80:	00308703          	lb	a4,3(ra)
  84:	00f00393          	addi	t2,zero,15
  88:	70771ae3          	bne	a4,t2,f9c <fail>

000000000000008c <test_6>:
  8c:	00600193          	addi	gp,zero,6
  90:	fff00793          	addi	a5,zero,-1
  94:	00001097          	auipc	ra,0x1
  98:	f1f08093          	addi	ra,ra,-225 # fb3 <tdat4LB>
  9c:	ffd08703          	lb	a4,-3(ra)
  a0:	fff00393          	addi	t2,zero,-1
  a4:	6e771ce3          	bne	a4,t2,f9c <fail>

00000000000000a8 <test_7>:
  a8:	00700193          	addi	gp,zero,7
  ac:	00000793          	addi	a5,zero,0
  b0:	00001097          	auipc	ra,0x1
  b4:	f0308093          	addi	ra,ra,-253 # fb3 <tdat4LB>
  b8:	ffe08703          	lb	a4,-2(ra)
  bc:	00000393          	addi	t2,zero,0
  c0:	6c771ee3          	bne	a4,t2,f9c <fail>

00000000000000c4 <test_8>:
  c4:	00800193          	addi	gp,zero,8
  c8:	ff000793          	addi	a5,zero,-16
  cc:	00001097          	auipc	ra,0x1
  d0:	ee708093          	addi	ra,ra,-281 # fb3 <tdat4LB>
  d4:	fff08703          	lb	a4,-1(ra)
  d8:	ff000393          	addi	t2,zero,-16
  dc:	6c7710e3          	bne	a4,t2,f9c <fail>

00000000000000e0 <test_9>:
  e0:	00900193          	addi	gp,zero,9
  e4:	00f00793          	addi	a5,zero,15
  e8:	00001097          	auipc	ra,0x1
  ec:	ecb08093          	addi	ra,ra,-309 # fb3 <tdat4LB>
  f0:	00008703          	lb	a4,0(ra)
  f4:	00f00393          	addi	t2,zero,15
  f8:	6a7712e3          	bne	a4,t2,f9c <fail>

00000000000000fc <test_10>:
  fc:	00a00193          	addi	gp,zero,10
 100:	00001097          	auipc	ra,0x1
 104:	eb008093          	addi	ra,ra,-336 # fb0 <tdat1LB>
 108:	fe008093          	addi	ra,ra,-32
 10c:	02008283          	lb	t0,32(ra)
 110:	fff00393          	addi	t2,zero,-1
 114:	687294e3          	bne	t0,t2,f9c <fail>

0000000000000118 <test_11>:
 118:	00b00193          	addi	gp,zero,11
 11c:	00001097          	auipc	ra,0x1
 120:	e9808093          	addi	ra,ra,-360 # fb4 <tdat1LH>
 124:	ffb08093          	addi	ra,ra,-5
 128:	00709283          	lh	t0,7(ra)
 12c:	f0000393          	addi	t2,zero,-256
 130:	667296e3          	bne	t0,t2,f9c <fail>

0000000000000134 <test_12>:
 134:	00c00193          	addi	gp,zero,12
 138:	0ff00793          	addi	a5,zero,255
 13c:	00001097          	auipc	ra,0x1
 140:	e7808093          	addi	ra,ra,-392 # fb4 <tdat1LH>
 144:	00009703          	lh	a4,0(ra)
 148:	0ff00393          	addi	t2,zero,255
 14c:	647718e3          	bne	a4,t2,f9c <fail>

0000000000000150 <test_13>:
 150:	00d00193          	addi	gp,zero,13
 154:	f0000793          	addi	a5,zero,-256
 158:	00001097          	auipc	ra,0x1
 15c:	e5c08093          	addi	ra,ra,-420 # fb4 <tdat1LH>
 160:	00209703          	lh	a4,2(ra)
 164:	f0000393          	addi	t2,zero,-256
 168:	62771ae3          	bne	a4,t2,f9c <fail>

000000000000016c <test_14>:
 16c:	00e00193          	addi	gp,zero,14
 170:	000017b7          	lui	a5,0x1
 174:	ff07879b          	addiw	a5,a5,-16 # ff0 <_end+0x24>
 178:	00001097          	auipc	ra,0x1
 17c:	e3c08093          	addi	ra,ra,-452 # fb4 <tdat1LH>
 180:	00409703          	lh	a4,4(ra)
 184:	000013b7          	lui	t2,0x1
 188:	ff03839b          	addiw	t2,t2,-16 # ff0 <_end+0x24>
 18c:	607718e3          	bne	a4,t2,f9c <fail>

0000000000000190 <test_15>:
 190:	00f00193          	addi	gp,zero,15
 194:	fffff7b7          	lui	a5,0xfffff
 198:	00f7879b          	addiw	a5,a5,15 # fffffffffffff00f <_end+0xffffffffffffe043>
 19c:	00001097          	auipc	ra,0x1
 1a0:	e1808093          	addi	ra,ra,-488 # fb4 <tdat1LH>
 1a4:	00609703          	lh	a4,6(ra)
 1a8:	fffff3b7          	lui	t2,0xfffff
 1ac:	00f3839b          	addiw	t2,t2,15 # fffffffffffff00f <_end+0xffffffffffffe043>
 1b0:	5e7716e3          	bne	a4,t2,f9c <fail>

00000000000001b4 <test_16>:
 1b4:	01000193          	addi	gp,zero,16
 1b8:	0ff00793          	addi	a5,zero,255
 1bc:	00001097          	auipc	ra,0x1
 1c0:	dfe08093          	addi	ra,ra,-514 # fba <tdat4LH>
 1c4:	ffa09703          	lh	a4,-6(ra)
 1c8:	0ff00393          	addi	t2,zero,255
 1cc:	5c7718e3          	bne	a4,t2,f9c <fail>

00000000000001d0 <test_17>:
 1d0:	01100193          	addi	gp,zero,17
 1d4:	f0000793          	addi	a5,zero,-256
 1d8:	00001097          	auipc	ra,0x1
 1dc:	de208093          	addi	ra,ra,-542 # fba <tdat4LH>
 1e0:	ffc09703          	lh	a4,-4(ra)
 1e4:	f0000393          	addi	t2,zero,-256
 1e8:	5a771ae3          	bne	a4,t2,f9c <fail>

00000000000001ec <test_18>:
 1ec:	01200193          	addi	gp,zero,18
 1f0:	000017b7          	lui	a5,0x1
 1f4:	ff07879b          	addiw	a5,a5,-16 # ff0 <_end+0x24>
 1f8:	00001097          	auipc	ra,0x1
 1fc:	dc208093          	addi	ra,ra,-574 # fba <tdat4LH>
 200:	ffe09703          	lh	a4,-2(ra)
 204:	000013b7          	lui	t2,0x1
 208:	ff03839b          	addiw	t2,t2,-16 # ff0 <_end+0x24>
 20c:	587718e3          	bne	a4,t2,f9c <fail>

0000000000000210 <test_19>:
 210:	01300193          	addi	gp,zero,19
 214:	fffff7b7          	lui	a5,0xfffff
 218:	00f7879b          	addiw	a5,a5,15 # fffffffffffff00f <_end+0xffffffffffffe043>
 21c:	00001097          	auipc	ra,0x1
 220:	d9e08093          	addi	ra,ra,-610 # fba <tdat4LH>
 224:	00009703          	lh	a4,0(ra)
 228:	fffff3b7          	lui	t2,0xfffff
 22c:	00f3839b          	addiw	t2,t2,15 # fffffffffffff00f <_end+0xffffffffffffe043>
 230:	567716e3          	bne	a4,t2,f9c <fail>

0000000000000234 <test_20>:
 234:	01400193          	addi	gp,zero,20
 238:	00001097          	auipc	ra,0x1
 23c:	d7c08093          	addi	ra,ra,-644 # fb4 <tdat1LH>
 240:	fe008093          	addi	ra,ra,-32
 244:	02009283          	lh	t0,32(ra)
 248:	0ff00393          	addi	t2,zero,255
 24c:	547298e3          	bne	t0,t2,f9c <fail>

0000000000000250 <test_21>:
 250:	01500193          	addi	gp,zero,21
 254:	00001097          	auipc	ra,0x1
 258:	d6808093          	addi	ra,ra,-664 # fbc <tdat1LW>
 25c:	ffd08093          	addi	ra,ra,-3
 260:	0070a283          	lw	t0,7(ra)
 264:	ff0103b7          	lui	t2,0xff010
 268:	f003839b          	addiw	t2,t2,-256 # ffffffffff00ff00 <_end+0xffffffffff00ef34>
 26c:	527298e3          	bne	t0,t2,f9c <fail>

0000000000000270 <test_22>:
 270:	01600193          	addi	gp,zero,22
 274:	00ff07b7          	lui	a5,0xff0
 278:	0ff7879b          	addiw	a5,a5,255 # ff00ff <_end+0xfef133>
 27c:	00001097          	auipc	ra,0x1
 280:	d4008093          	addi	ra,ra,-704 # fbc <tdat1LW>
 284:	0000a703          	lw	a4,0(ra)
 288:	00ff03b7          	lui	t2,0xff0
 28c:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 290:	507716e3          	bne	a4,t2,f9c <fail>

0000000000000294 <test_23>:
 294:	01700193          	addi	gp,zero,23
 298:	ff0107b7          	lui	a5,0xff010
 29c:	f007879b          	addiw	a5,a5,-256 # ffffffffff00ff00 <_end+0xffffffffff00ef34>
 2a0:	00001097          	auipc	ra,0x1
 2a4:	d1c08093          	addi	ra,ra,-740 # fbc <tdat1LW>
 2a8:	0040a703          	lw	a4,4(ra)
 2ac:	ff0103b7          	lui	t2,0xff010
 2b0:	f003839b          	addiw	t2,t2,-256 # ffffffffff00ff00 <_end+0xffffffffff00ef34>
 2b4:	4e7714e3          	bne	a4,t2,f9c <fail>

00000000000002b8 <test_24>:
 2b8:	01800193          	addi	gp,zero,24
 2bc:	0ff017b7          	lui	a5,0xff01
 2c0:	ff07879b          	addiw	a5,a5,-16 # ff00ff0 <_end+0xff00024>
 2c4:	00001097          	auipc	ra,0x1
 2c8:	cf808093          	addi	ra,ra,-776 # fbc <tdat1LW>
 2cc:	0080a703          	lw	a4,8(ra)
 2d0:	0ff013b7          	lui	t2,0xff01
 2d4:	ff03839b          	addiw	t2,t2,-16 # ff00ff0 <_end+0xff00024>
 2d8:	4c7712e3          	bne	a4,t2,f9c <fail>

00000000000002dc <test_25>:
 2dc:	01900193          	addi	gp,zero,25
 2e0:	f00ff7b7          	lui	a5,0xf00ff
 2e4:	00f7879b          	addiw	a5,a5,15 # fffffffff00ff00f <_end+0xfffffffff00fe043>
 2e8:	00001097          	auipc	ra,0x1
 2ec:	cd408093          	addi	ra,ra,-812 # fbc <tdat1LW>
 2f0:	00c0a703          	lw	a4,12(ra)
 2f4:	f00ff3b7          	lui	t2,0xf00ff
 2f8:	00f3839b          	addiw	t2,t2,15 # fffffffff00ff00f <_end+0xfffffffff00fe043>
 2fc:	4a7710e3          	bne	a4,t2,f9c <fail>

0000000000000300 <test_26>:
 300:	01a00193          	addi	gp,zero,26
 304:	00ff07b7          	lui	a5,0xff0
 308:	0ff7879b          	addiw	a5,a5,255 # ff00ff <_end+0xfef133>
 30c:	00001097          	auipc	ra,0x1
 310:	cbc08093          	addi	ra,ra,-836 # fc8 <tdat4LW>
 314:	ff40a703          	lw	a4,-12(ra)
 318:	00ff03b7          	lui	t2,0xff0
 31c:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 320:	46771ee3          	bne	a4,t2,f9c <fail>

0000000000000324 <test_27>:
 324:	01b00193          	addi	gp,zero,27
 328:	ff0107b7          	lui	a5,0xff010
 32c:	f007879b          	addiw	a5,a5,-256 # ffffffffff00ff00 <_end+0xffffffffff00ef34>
 330:	00001097          	auipc	ra,0x1
 334:	c9808093          	addi	ra,ra,-872 # fc8 <tdat4LW>
 338:	ff80a703          	lw	a4,-8(ra)
 33c:	ff0103b7          	lui	t2,0xff010
 340:	f003839b          	addiw	t2,t2,-256 # ffffffffff00ff00 <_end+0xffffffffff00ef34>
 344:	44771ce3          	bne	a4,t2,f9c <fail>

0000000000000348 <test_28>:
 348:	01c00193          	addi	gp,zero,28
 34c:	0ff017b7          	lui	a5,0xff01
 350:	ff07879b          	addiw	a5,a5,-16 # ff00ff0 <_end+0xff00024>
 354:	00001097          	auipc	ra,0x1
 358:	c7408093          	addi	ra,ra,-908 # fc8 <tdat4LW>
 35c:	ffc0a703          	lw	a4,-4(ra)
 360:	0ff013b7          	lui	t2,0xff01
 364:	ff03839b          	addiw	t2,t2,-16 # ff00ff0 <_end+0xff00024>
 368:	42771ae3          	bne	a4,t2,f9c <fail>

000000000000036c <test_29>:
 36c:	01d00193          	addi	gp,zero,29
 370:	f00ff7b7          	lui	a5,0xf00ff
 374:	00f7879b          	addiw	a5,a5,15 # fffffffff00ff00f <_end+0xfffffffff00fe043>
 378:	00001097          	auipc	ra,0x1
 37c:	c5008093          	addi	ra,ra,-944 # fc8 <tdat4LW>
 380:	0000a703          	lw	a4,0(ra)
 384:	f00ff3b7          	lui	t2,0xf00ff
 388:	00f3839b          	addiw	t2,t2,15 # fffffffff00ff00f <_end+0xfffffffff00fe043>
 38c:	407718e3          	bne	a4,t2,f9c <fail>

0000000000000390 <test_30>:
 390:	01e00193          	addi	gp,zero,30
 394:	00001097          	auipc	ra,0x1
 398:	c2808093          	addi	ra,ra,-984 # fbc <tdat1LW>
 39c:	fe008093          	addi	ra,ra,-32
 3a0:	0200a283          	lw	t0,32(ra)
 3a4:	00ff03b7          	lui	t2,0xff0
 3a8:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 3ac:	3e7298e3          	bne	t0,t2,f9c <fail>

00000000000003b0 <test_31>:
 3b0:	01f00193          	addi	gp,zero,31
 3b4:	00001097          	auipc	ra,0x1
 3b8:	bfc08093          	addi	ra,ra,-1028 # fb0 <tdat1LB>
 3bc:	ffa08093          	addi	ra,ra,-6
 3c0:	0070c283          	lbu	t0,7(ra)
 3c4:	00000393          	addi	t2,zero,0
 3c8:	3c729ae3          	bne	t0,t2,f9c <fail>

00000000000003cc <test_32>:
 3cc:	02000193          	addi	gp,zero,32
 3d0:	0ff00793          	addi	a5,zero,255
 3d4:	00001097          	auipc	ra,0x1
 3d8:	bdc08093          	addi	ra,ra,-1060 # fb0 <tdat1LB>
 3dc:	0000c703          	lbu	a4,0(ra)
 3e0:	0ff00393          	addi	t2,zero,255
 3e4:	3a771ce3          	bne	a4,t2,f9c <fail>

00000000000003e8 <test_33>:
 3e8:	02100193          	addi	gp,zero,33
 3ec:	00000793          	addi	a5,zero,0
 3f0:	00001097          	auipc	ra,0x1
 3f4:	bc008093          	addi	ra,ra,-1088 # fb0 <tdat1LB>
 3f8:	0010c703          	lbu	a4,1(ra)
 3fc:	00000393          	addi	t2,zero,0
 400:	38771ee3          	bne	a4,t2,f9c <fail>

0000000000000404 <test_34>:
 404:	02200193          	addi	gp,zero,34
 408:	0f000793          	addi	a5,zero,240
 40c:	00001097          	auipc	ra,0x1
 410:	ba408093          	addi	ra,ra,-1116 # fb0 <tdat1LB>
 414:	0020c703          	lbu	a4,2(ra)
 418:	0f000393          	addi	t2,zero,240
 41c:	387710e3          	bne	a4,t2,f9c <fail>

0000000000000420 <test_35>:
 420:	02300193          	addi	gp,zero,35
 424:	00f00793          	addi	a5,zero,15
 428:	00001097          	auipc	ra,0x1
 42c:	b8808093          	addi	ra,ra,-1144 # fb0 <tdat1LB>
 430:	0030c703          	lbu	a4,3(ra)
 434:	00f00393          	addi	t2,zero,15
 438:	367712e3          	bne	a4,t2,f9c <fail>

000000000000043c <test_36>:
 43c:	02400193          	addi	gp,zero,36
 440:	0ff00793          	addi	a5,zero,255
 444:	00001097          	auipc	ra,0x1
 448:	b6f08093          	addi	ra,ra,-1169 # fb3 <tdat4LB>
 44c:	ffd0c703          	lbu	a4,-3(ra)
 450:	0ff00393          	addi	t2,zero,255
 454:	347714e3          	bne	a4,t2,f9c <fail>

0000000000000458 <test_37>:
 458:	02500193          	addi	gp,zero,37
 45c:	00000793          	addi	a5,zero,0
 460:	00001097          	auipc	ra,0x1
 464:	b5308093          	addi	ra,ra,-1197 # fb3 <tdat4LB>
 468:	ffe0c703          	lbu	a4,-2(ra)
 46c:	00000393          	addi	t2,zero,0
 470:	327716e3          	bne	a4,t2,f9c <fail>

0000000000000474 <test_38>:
 474:	02600193          	addi	gp,zero,38
 478:	0f000793          	addi	a5,zero,240
 47c:	00001097          	auipc	ra,0x1
 480:	b3708093          	addi	ra,ra,-1225 # fb3 <tdat4LB>
 484:	fff0c703          	lbu	a4,-1(ra)
 488:	0f000393          	addi	t2,zero,240
 48c:	307718e3          	bne	a4,t2,f9c <fail>

0000000000000490 <test_39>:
 490:	02700193          	addi	gp,zero,39
 494:	00f00793          	addi	a5,zero,15
 498:	00001097          	auipc	ra,0x1
 49c:	b1b08093          	addi	ra,ra,-1253 # fb3 <tdat4LB>
 4a0:	0000c703          	lbu	a4,0(ra)
 4a4:	00f00393          	addi	t2,zero,15
 4a8:	2e771ae3          	bne	a4,t2,f9c <fail>

00000000000004ac <test_40>:
 4ac:	02800193          	addi	gp,zero,40
 4b0:	00001097          	auipc	ra,0x1
 4b4:	b0008093          	addi	ra,ra,-1280 # fb0 <tdat1LB>
 4b8:	fe008093          	addi	ra,ra,-32
 4bc:	0200c283          	lbu	t0,32(ra)
 4c0:	0ff00393          	addi	t2,zero,255
 4c4:	2c729ce3          	bne	t0,t2,f9c <fail>

00000000000004c8 <test_41>:
 4c8:	02900193          	addi	gp,zero,41
 4cc:	00001097          	auipc	ra,0x1
 4d0:	ae808093          	addi	ra,ra,-1304 # fb4 <tdat1LH>
 4d4:	ffb08093          	addi	ra,ra,-5
 4d8:	0070d283          	lhu	t0,7(ra)
 4dc:	000103b7          	lui	t2,0x10
 4e0:	f003839b          	addiw	t2,t2,-256 # ff00 <_end+0xef34>
 4e4:	2a729ce3          	bne	t0,t2,f9c <fail>

00000000000004e8 <test_42>:
 4e8:	02a00193          	addi	gp,zero,42
 4ec:	0ff00793          	addi	a5,zero,255
 4f0:	00001097          	auipc	ra,0x1
 4f4:	ac408093          	addi	ra,ra,-1340 # fb4 <tdat1LH>
 4f8:	0000d703          	lhu	a4,0(ra)
 4fc:	0ff00393          	addi	t2,zero,255
 500:	28771ee3          	bne	a4,t2,f9c <fail>

0000000000000504 <test_43>:
 504:	02b00193          	addi	gp,zero,43
 508:	000107b7          	lui	a5,0x10
 50c:	f007879b          	addiw	a5,a5,-256 # ff00 <_end+0xef34>
 510:	00001097          	auipc	ra,0x1
 514:	aa408093          	addi	ra,ra,-1372 # fb4 <tdat1LH>
 518:	0020d703          	lhu	a4,2(ra)
 51c:	000103b7          	lui	t2,0x10
 520:	f003839b          	addiw	t2,t2,-256 # ff00 <_end+0xef34>
 524:	26771ce3          	bne	a4,t2,f9c <fail>

0000000000000528 <test_44>:
 528:	02c00193          	addi	gp,zero,44
 52c:	000017b7          	lui	a5,0x1
 530:	ff07879b          	addiw	a5,a5,-16 # ff0 <_end+0x24>
 534:	00001097          	auipc	ra,0x1
 538:	a8008093          	addi	ra,ra,-1408 # fb4 <tdat1LH>
 53c:	0040d703          	lhu	a4,4(ra)
 540:	000013b7          	lui	t2,0x1
 544:	ff03839b          	addiw	t2,t2,-16 # ff0 <_end+0x24>
 548:	24771ae3          	bne	a4,t2,f9c <fail>

000000000000054c <test_45>:
 54c:	02d00193          	addi	gp,zero,45
 550:	0000f7b7          	lui	a5,0xf
 554:	00f7879b          	addiw	a5,a5,15 # f00f <_end+0xe043>
 558:	00001097          	auipc	ra,0x1
 55c:	a5c08093          	addi	ra,ra,-1444 # fb4 <tdat1LH>
 560:	0060d703          	lhu	a4,6(ra)
 564:	0000f3b7          	lui	t2,0xf
 568:	00f3839b          	addiw	t2,t2,15 # f00f <_end+0xe043>
 56c:	227718e3          	bne	a4,t2,f9c <fail>

0000000000000570 <test_46>:
 570:	02e00193          	addi	gp,zero,46
 574:	0ff00793          	addi	a5,zero,255
 578:	00001097          	auipc	ra,0x1
 57c:	a4208093          	addi	ra,ra,-1470 # fba <tdat4LH>
 580:	ffa0d703          	lhu	a4,-6(ra)
 584:	0ff00393          	addi	t2,zero,255
 588:	20771ae3          	bne	a4,t2,f9c <fail>

000000000000058c <test_47>:
 58c:	02f00193          	addi	gp,zero,47
 590:	000107b7          	lui	a5,0x10
 594:	f007879b          	addiw	a5,a5,-256 # ff00 <_end+0xef34>
 598:	00001097          	auipc	ra,0x1
 59c:	a2208093          	addi	ra,ra,-1502 # fba <tdat4LH>
 5a0:	ffc0d703          	lhu	a4,-4(ra)
 5a4:	000103b7          	lui	t2,0x10
 5a8:	f003839b          	addiw	t2,t2,-256 # ff00 <_end+0xef34>
 5ac:	1e7718e3          	bne	a4,t2,f9c <fail>

00000000000005b0 <test_48>:
 5b0:	03000193          	addi	gp,zero,48
 5b4:	000017b7          	lui	a5,0x1
 5b8:	ff07879b          	addiw	a5,a5,-16 # ff0 <_end+0x24>
 5bc:	00001097          	auipc	ra,0x1
 5c0:	9fe08093          	addi	ra,ra,-1538 # fba <tdat4LH>
 5c4:	ffe0d703          	lhu	a4,-2(ra)
 5c8:	000013b7          	lui	t2,0x1
 5cc:	ff03839b          	addiw	t2,t2,-16 # ff0 <_end+0x24>
 5d0:	1c7716e3          	bne	a4,t2,f9c <fail>

00000000000005d4 <test_49>:
 5d4:	03100193          	addi	gp,zero,49
 5d8:	0000f7b7          	lui	a5,0xf
 5dc:	00f7879b          	addiw	a5,a5,15 # f00f <_end+0xe043>
 5e0:	00001097          	auipc	ra,0x1
 5e4:	9da08093          	addi	ra,ra,-1574 # fba <tdat4LH>
 5e8:	0000d703          	lhu	a4,0(ra)
 5ec:	0000f3b7          	lui	t2,0xf
 5f0:	00f3839b          	addiw	t2,t2,15 # f00f <_end+0xe043>
 5f4:	1a7714e3          	bne	a4,t2,f9c <fail>

00000000000005f8 <test_50>:
 5f8:	03200193          	addi	gp,zero,50
 5fc:	00001097          	auipc	ra,0x1
 600:	9b808093          	addi	ra,ra,-1608 # fb4 <tdat1LH>
 604:	fe008093          	addi	ra,ra,-32
 608:	0200d283          	lhu	t0,32(ra)
 60c:	0ff00393          	addi	t2,zero,255
 610:	187296e3          	bne	t0,t2,f9c <fail>

0000000000000614 <test_51>:
 614:	03300193          	addi	gp,zero,51
 618:	00001097          	auipc	ra,0x1
 61c:	9a408093          	addi	ra,ra,-1628 # fbc <tdat1LW>
 620:	ffd08093          	addi	ra,ra,-3
 624:	0070e283          	lwu	t0,7(ra)
 628:	000103b7          	lui	t2,0x10
 62c:	f013839b          	addiw	t2,t2,-255 # ff01 <_end+0xef35>
 630:	01039393          	slli	t2,t2,0x10
 634:	f0038393          	addi	t2,t2,-256
 638:	167292e3          	bne	t0,t2,f9c <fail>

000000000000063c <test_52>:
 63c:	03400193          	addi	gp,zero,52
 640:	00ff07b7          	lui	a5,0xff0
 644:	0ff7879b          	addiw	a5,a5,255 # ff00ff <_end+0xfef133>
 648:	00001097          	auipc	ra,0x1
 64c:	97408093          	addi	ra,ra,-1676 # fbc <tdat1LW>
 650:	0000e703          	lwu	a4,0(ra)
 654:	00ff03b7          	lui	t2,0xff0
 658:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 65c:	147710e3          	bne	a4,t2,f9c <fail>

0000000000000660 <test_53>:
 660:	03500193          	addi	gp,zero,53
 664:	000107b7          	lui	a5,0x10
 668:	f017879b          	addiw	a5,a5,-255 # ff01 <_end+0xef35>
 66c:	01079793          	slli	a5,a5,0x10
 670:	f0078793          	addi	a5,a5,-256
 674:	00001097          	auipc	ra,0x1
 678:	94808093          	addi	ra,ra,-1720 # fbc <tdat1LW>
 67c:	0040e703          	lwu	a4,4(ra)
 680:	000103b7          	lui	t2,0x10
 684:	f013839b          	addiw	t2,t2,-255 # ff01 <_end+0xef35>
 688:	01039393          	slli	t2,t2,0x10
 68c:	f0038393          	addi	t2,t2,-256
 690:	107716e3          	bne	a4,t2,f9c <fail>

0000000000000694 <test_54>:
 694:	03600193          	addi	gp,zero,54
 698:	0ff017b7          	lui	a5,0xff01
 69c:	ff07879b          	addiw	a5,a5,-16 # ff00ff0 <_end+0xff00024>
 6a0:	00001097          	auipc	ra,0x1
 6a4:	91c08093          	addi	ra,ra,-1764 # fbc <tdat1LW>
 6a8:	0080e703          	lwu	a4,8(ra)
 6ac:	0ff013b7          	lui	t2,0xff01
 6b0:	ff03839b          	addiw	t2,t2,-16 # ff00ff0 <_end+0xff00024>
 6b4:	0e7714e3          	bne	a4,t2,f9c <fail>

00000000000006b8 <test_55>:
 6b8:	03700193          	addi	gp,zero,55
 6bc:	000f07b7          	lui	a5,0xf0
 6c0:	0ff7879b          	addiw	a5,a5,255 # f00ff <_end+0xef133>
 6c4:	00c79793          	slli	a5,a5,0xc
 6c8:	00f78793          	addi	a5,a5,15
 6cc:	00001097          	auipc	ra,0x1
 6d0:	8f008093          	addi	ra,ra,-1808 # fbc <tdat1LW>
 6d4:	00c0e703          	lwu	a4,12(ra)
 6d8:	000f03b7          	lui	t2,0xf0
 6dc:	0ff3839b          	addiw	t2,t2,255 # f00ff <_end+0xef133>
 6e0:	00c39393          	slli	t2,t2,0xc
 6e4:	00f38393          	addi	t2,t2,15
 6e8:	0a771ae3          	bne	a4,t2,f9c <fail>

00000000000006ec <test_56>:
 6ec:	03800193          	addi	gp,zero,56
 6f0:	00ff07b7          	lui	a5,0xff0
 6f4:	0ff7879b          	addiw	a5,a5,255 # ff00ff <_end+0xfef133>
 6f8:	00001097          	auipc	ra,0x1
 6fc:	8d008093          	addi	ra,ra,-1840 # fc8 <tdat4LW>
 700:	ff40e703          	lwu	a4,-12(ra)
 704:	00ff03b7          	lui	t2,0xff0
 708:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 70c:	087718e3          	bne	a4,t2,f9c <fail>

0000000000000710 <test_57>:
 710:	03900193          	addi	gp,zero,57
 714:	000107b7          	lui	a5,0x10
 718:	f017879b          	addiw	a5,a5,-255 # ff01 <_end+0xef35>
 71c:	01079793          	slli	a5,a5,0x10
 720:	f0078793          	addi	a5,a5,-256
 724:	00001097          	auipc	ra,0x1
 728:	8a408093          	addi	ra,ra,-1884 # fc8 <tdat4LW>
 72c:	ff80e703          	lwu	a4,-8(ra)
 730:	000103b7          	lui	t2,0x10
 734:	f013839b          	addiw	t2,t2,-255 # ff01 <_end+0xef35>
 738:	01039393          	slli	t2,t2,0x10
 73c:	f0038393          	addi	t2,t2,-256
 740:	04771ee3          	bne	a4,t2,f9c <fail>

0000000000000744 <test_58>:
 744:	03a00193          	addi	gp,zero,58
 748:	0ff017b7          	lui	a5,0xff01
 74c:	ff07879b          	addiw	a5,a5,-16 # ff00ff0 <_end+0xff00024>
 750:	00001097          	auipc	ra,0x1
 754:	87808093          	addi	ra,ra,-1928 # fc8 <tdat4LW>
 758:	ffc0e703          	lwu	a4,-4(ra)
 75c:	0ff013b7          	lui	t2,0xff01
 760:	ff03839b          	addiw	t2,t2,-16 # ff00ff0 <_end+0xff00024>
 764:	02771ce3          	bne	a4,t2,f9c <fail>

0000000000000768 <test_59>:
 768:	03b00193          	addi	gp,zero,59
 76c:	000f07b7          	lui	a5,0xf0
 770:	0ff7879b          	addiw	a5,a5,255 # f00ff <_end+0xef133>
 774:	00c79793          	slli	a5,a5,0xc
 778:	00f78793          	addi	a5,a5,15
 77c:	00001097          	auipc	ra,0x1
 780:	84c08093          	addi	ra,ra,-1972 # fc8 <tdat4LW>
 784:	0000e703          	lwu	a4,0(ra)
 788:	000f03b7          	lui	t2,0xf0
 78c:	0ff3839b          	addiw	t2,t2,255 # f00ff <_end+0xef133>
 790:	00c39393          	slli	t2,t2,0xc
 794:	00f38393          	addi	t2,t2,15
 798:	007712e3          	bne	a4,t2,f9c <fail>

000000000000079c <test_60>:
 79c:	03c00193          	addi	gp,zero,60
 7a0:	00001097          	auipc	ra,0x1
 7a4:	81c08093          	addi	ra,ra,-2020 # fbc <tdat1LW>
 7a8:	fe008093          	addi	ra,ra,-32
 7ac:	0200e283          	lwu	t0,32(ra)
 7b0:	00ff03b7          	lui	t2,0xff0
 7b4:	0ff3839b          	addiw	t2,t2,255 # ff00ff <_end+0xfef133>
 7b8:	7e729263          	bne	t0,t2,f9c <fail>

00000000000007bc <test_61>:
 7bc:	03d00193          	addi	gp,zero,61
 7c0:	00000097          	auipc	ra,0x0
 7c4:	7f308093          	addi	ra,ra,2035 # fb3 <tdat4LB>
 7c8:	00a00113          	addi	sp,zero,10
 7cc:	00000797          	auipc	a5,0x0
 7d0:	01478793          	addi	a5,a5,20 # 7e0 <test_61+0x24>
 7d4:	fe208ea3          	sb	sp,-3(ra)
 7d8:	ffd08703          	lb	a4,-3(ra)
 7dc:	0080006f          	jal	zero,7e4 <test_61+0x28>
 7e0:	00010713          	addi	a4,sp,0
 7e4:	00a00393          	addi	t2,zero,10
 7e8:	7a771a63          	bne	a4,t2,f9c <fail>

00000000000007ec <test_62>:
 7ec:	03e00193          	addi	gp,zero,62
 7f0:	00000097          	auipc	ra,0x0
 7f4:	7c008093          	addi	ra,ra,1984 # fb0 <tdat1LB>
 7f8:	faa00113          	addi	sp,zero,-86
 7fc:	00000797          	auipc	a5,0x0
 800:	01478793          	addi	a5,a5,20 # 810 <test_62+0x24>
 804:	00208023          	sb	sp,0(ra)
 808:	00008703          	lb	a4,0(ra)
 80c:	0080006f          	jal	zero,814 <test_62+0x28>
 810:	00010713          	addi	a4,sp,0
 814:	faa00393          	addi	t2,zero,-86
 818:	78771263          	bne	a4,t2,f9c <fail>

000000000000081c <test_63>:
 81c:	03f00193          	addi	gp,zero,63
 820:	00000097          	auipc	ra,0x0
 824:	79008093          	addi	ra,ra,1936 # fb0 <tdat1LB>
 828:	00000113          	addi	sp,zero,0
 82c:	00000797          	auipc	a5,0x0
 830:	01478793          	addi	a5,a5,20 # 840 <test_63+0x24>
 834:	002080a3          	sb	sp,1(ra)
 838:	00108703          	lb	a4,1(ra)
 83c:	0080006f          	jal	zero,844 <test_63+0x28>
 840:	00010713          	addi	a4,sp,0
 844:	00000393          	addi	t2,zero,0
 848:	74771a63          	bne	a4,t2,f9c <fail>

000000000000084c <test_64>:
 84c:	04000193          	addi	gp,zero,64
 850:	00000097          	auipc	ra,0x0
 854:	76008093          	addi	ra,ra,1888 # fb0 <tdat1LB>
 858:	fa000113          	addi	sp,zero,-96
 85c:	00000797          	auipc	a5,0x0
 860:	01478793          	addi	a5,a5,20 # 870 <test_64+0x24>
 864:	00208123          	sb	sp,2(ra)
 868:	00208703          	lb	a4,2(ra)
 86c:	0080006f          	jal	zero,874 <test_64+0x28>
 870:	00010713          	addi	a4,sp,0
 874:	fa000393          	addi	t2,zero,-96
 878:	72771263          	bne	a4,t2,f9c <fail>

000000000000087c <test_65>:
 87c:	04100193          	addi	gp,zero,65
 880:	00000097          	auipc	ra,0x0
 884:	73008093          	addi	ra,ra,1840 # fb0 <tdat1LB>
 888:	00a00113          	addi	sp,zero,10
 88c:	00000797          	auipc	a5,0x0
 890:	01478793          	addi	a5,a5,20 # 8a0 <test_65+0x24>
 894:	002081a3          	sb	sp,3(ra)
 898:	00308703          	lb	a4,3(ra)
 89c:	0080006f          	jal	zero,8a4 <test_65+0x28>
 8a0:	00010713          	addi	a4,sp,0
 8a4:	00a00393          	addi	t2,zero,10
 8a8:	6e771a63          	bne	a4,t2,f9c <fail>

00000000000008ac <test_66>:
 8ac:	04200193          	addi	gp,zero,66
 8b0:	00000097          	auipc	ra,0x0
 8b4:	70308093          	addi	ra,ra,1795 # fb3 <tdat4LB>
 8b8:	faa00113          	addi	sp,zero,-86
 8bc:	00000797          	auipc	a5,0x0
 8c0:	01478793          	addi	a5,a5,20 # 8d0 <test_66+0x24>
 8c4:	00208023          	sb	sp,0(ra)
 8c8:	00008703          	lb	a4,0(ra)
 8cc:	0080006f          	jal	zero,8d4 <test_66+0x28>
 8d0:	00010713          	addi	a4,sp,0
 8d4:	faa00393          	addi	t2,zero,-86
 8d8:	6c771263          	bne	a4,t2,f9c <fail>

00000000000008dc <test_67>:
 8dc:	04300193          	addi	gp,zero,67
 8e0:	00000097          	auipc	ra,0x0
 8e4:	6d308093          	addi	ra,ra,1747 # fb3 <tdat4LB>
 8e8:	00000113          	addi	sp,zero,0
 8ec:	00000797          	auipc	a5,0x0
 8f0:	01478793          	addi	a5,a5,20 # 900 <test_67+0x24>
 8f4:	fe208fa3          	sb	sp,-1(ra)
 8f8:	fff08703          	lb	a4,-1(ra)
 8fc:	0080006f          	jal	zero,904 <test_67+0x28>
 900:	00010713          	addi	a4,sp,0
 904:	00000393          	addi	t2,zero,0
 908:	68771a63          	bne	a4,t2,f9c <fail>

000000000000090c <test_68>:
 90c:	04400193          	addi	gp,zero,68
 910:	00000097          	auipc	ra,0x0
 914:	6a308093          	addi	ra,ra,1699 # fb3 <tdat4LB>
 918:	fa000113          	addi	sp,zero,-96
 91c:	00000797          	auipc	a5,0x0
 920:	01478793          	addi	a5,a5,20 # 930 <test_68+0x24>
 924:	fe208f23          	sb	sp,-2(ra)
 928:	ffe08703          	lb	a4,-2(ra)
 92c:	0080006f          	jal	zero,934 <test_68+0x28>
 930:	00010713          	addi	a4,sp,0
 934:	fa000393          	addi	t2,zero,-96
 938:	66771263          	bne	a4,t2,f9c <fail>

000000000000093c <test_69>:
 93c:	04500193          	addi	gp,zero,69
 940:	00000097          	auipc	ra,0x0
 944:	67a08093          	addi	ra,ra,1658 # fba <tdat4LH>
 948:	ffffa137          	lui	sp,0xffffa
 94c:	00a1011b          	addiw	sp,sp,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 950:	00000797          	auipc	a5,0x0
 954:	01478793          	addi	a5,a5,20 # 964 <test_69+0x28>
 958:	fe209d23          	sh	sp,-6(ra)
 95c:	ffa09703          	lh	a4,-6(ra)
 960:	0080006f          	jal	zero,968 <test_69+0x2c>
 964:	00010713          	addi	a4,sp,0
 968:	ffffa3b7          	lui	t2,0xffffa
 96c:	00a3839b          	addiw	t2,t2,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 970:	62771663          	bne	a4,t2,f9c <fail>

0000000000000974 <test_70>:
 974:	04600193          	addi	gp,zero,70
 978:	00000097          	auipc	ra,0x0
 97c:	64208093          	addi	ra,ra,1602 # fba <tdat4LH>
 980:	00001137          	lui	sp,0x1
 984:	aa01011b          	addiw	sp,sp,-1376 # aa0 <test_75+0x1c>
 988:	00000797          	auipc	a5,0x0
 98c:	01478793          	addi	a5,a5,20 # 99c <test_70+0x28>
 990:	fe209e23          	sh	sp,-4(ra)
 994:	ffc09703          	lh	a4,-4(ra)
 998:	0080006f          	jal	zero,9a0 <test_70+0x2c>
 99c:	00010713          	addi	a4,sp,0
 9a0:	000013b7          	lui	t2,0x1
 9a4:	aa03839b          	addiw	t2,t2,-1376 # aa0 <test_75+0x1c>
 9a8:	5e771a63          	bne	a4,t2,f9c <fail>

00000000000009ac <test_71>:
 9ac:	04700193          	addi	gp,zero,71
 9b0:	00000097          	auipc	ra,0x0
 9b4:	60a08093          	addi	ra,ra,1546 # fba <tdat4LH>
 9b8:	ffffa137          	lui	sp,0xffffa
 9bc:	00a1011b          	addiw	sp,sp,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 9c0:	00000797          	auipc	a5,0x0
 9c4:	01478793          	addi	a5,a5,20 # 9d4 <test_71+0x28>
 9c8:	fe209d23          	sh	sp,-6(ra)
 9cc:	ffa09703          	lh	a4,-6(ra)
 9d0:	0080006f          	jal	zero,9d8 <test_71+0x2c>
 9d4:	00010713          	addi	a4,sp,0
 9d8:	ffffa3b7          	lui	t2,0xffffa
 9dc:	00a3839b          	addiw	t2,t2,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 9e0:	5a771e63          	bne	a4,t2,f9c <fail>

00000000000009e4 <test_72>:
 9e4:	04800193          	addi	gp,zero,72
 9e8:	00000097          	auipc	ra,0x0
 9ec:	5cc08093          	addi	ra,ra,1484 # fb4 <tdat1LH>
 9f0:	0aa00113          	addi	sp,zero,170
 9f4:	00000797          	auipc	a5,0x0
 9f8:	01478793          	addi	a5,a5,20 # a08 <test_72+0x24>
 9fc:	00209023          	sh	sp,0(ra)
 a00:	00009703          	lh	a4,0(ra)
 a04:	0080006f          	jal	zero,a0c <test_72+0x28>
 a08:	00010713          	addi	a4,sp,0
 a0c:	0aa00393          	addi	t2,zero,170
 a10:	58771663          	bne	a4,t2,f9c <fail>

0000000000000a14 <test_73>:
 a14:	04900193          	addi	gp,zero,73
 a18:	00000097          	auipc	ra,0x0
 a1c:	59c08093          	addi	ra,ra,1436 # fb4 <tdat1LH>
 a20:	ffffb137          	lui	sp,0xffffb
 a24:	a001011b          	addiw	sp,sp,-1536 # ffffffffffffaa00 <_end+0xffffffffffff9a34>
 a28:	00000797          	auipc	a5,0x0
 a2c:	01478793          	addi	a5,a5,20 # a3c <test_73+0x28>
 a30:	00209123          	sh	sp,2(ra)
 a34:	00209703          	lh	a4,2(ra)
 a38:	0080006f          	jal	zero,a40 <test_73+0x2c>
 a3c:	00010713          	addi	a4,sp,0
 a40:	ffffb3b7          	lui	t2,0xffffb
 a44:	a003839b          	addiw	t2,t2,-1536 # ffffffffffffaa00 <_end+0xffffffffffff9a34>
 a48:	54771a63          	bne	a4,t2,f9c <fail>

0000000000000a4c <test_74>:
 a4c:	04a00193          	addi	gp,zero,74
 a50:	00000097          	auipc	ra,0x0
 a54:	56408093          	addi	ra,ra,1380 # fb4 <tdat1LH>
 a58:	00001137          	lui	sp,0x1
 a5c:	aa01011b          	addiw	sp,sp,-1376 # aa0 <test_75+0x1c>
 a60:	00000797          	auipc	a5,0x0
 a64:	01478793          	addi	a5,a5,20 # a74 <test_74+0x28>
 a68:	00209223          	sh	sp,4(ra)
 a6c:	00409703          	lh	a4,4(ra)
 a70:	0080006f          	jal	zero,a78 <test_74+0x2c>
 a74:	00010713          	addi	a4,sp,0
 a78:	000013b7          	lui	t2,0x1
 a7c:	aa03839b          	addiw	t2,t2,-1376 # aa0 <test_75+0x1c>
 a80:	50771e63          	bne	a4,t2,f9c <fail>

0000000000000a84 <test_75>:
 a84:	04b00193          	addi	gp,zero,75
 a88:	00000097          	auipc	ra,0x0
 a8c:	52c08093          	addi	ra,ra,1324 # fb4 <tdat1LH>
 a90:	ffffa137          	lui	sp,0xffffa
 a94:	00a1011b          	addiw	sp,sp,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 a98:	00000797          	auipc	a5,0x0
 a9c:	01478793          	addi	a5,a5,20 # aac <test_75+0x28>
 aa0:	00209323          	sh	sp,6(ra)
 aa4:	00609703          	lh	a4,6(ra)
 aa8:	0080006f          	jal	zero,ab0 <test_75+0x2c>
 aac:	00010713          	addi	a4,sp,0
 ab0:	ffffa3b7          	lui	t2,0xffffa
 ab4:	00a3839b          	addiw	t2,t2,10 # ffffffffffffa00a <_end+0xffffffffffff903e>
 ab8:	4e771263          	bne	a4,t2,f9c <fail>

0000000000000abc <test_76>:
 abc:	04c00193          	addi	gp,zero,76
 ac0:	00000097          	auipc	ra,0x0
 ac4:	4fa08093          	addi	ra,ra,1274 # fba <tdat4LH>
 ac8:	0aa00113          	addi	sp,zero,170
 acc:	00000797          	auipc	a5,0x0
 ad0:	01478793          	addi	a5,a5,20 # ae0 <test_76+0x24>
 ad4:	00209023          	sh	sp,0(ra)
 ad8:	00009703          	lh	a4,0(ra)
 adc:	0080006f          	jal	zero,ae4 <test_76+0x28>
 ae0:	00010713          	addi	a4,sp,0
 ae4:	0aa00393          	addi	t2,zero,170
 ae8:	4a771a63          	bne	a4,t2,f9c <fail>

0000000000000aec <test_77>:
 aec:	04d00193          	addi	gp,zero,77
 af0:	00000097          	auipc	ra,0x0
 af4:	4ca08093          	addi	ra,ra,1226 # fba <tdat4LH>
 af8:	ffffb137          	lui	sp,0xffffb
 afc:	a001011b          	addiw	sp,sp,-1536 # ffffffffffffaa00 <_end+0xffffffffffff9a34>
 b00:	00000797          	auipc	a5,0x0
 b04:	01478793          	addi	a5,a5,20 # b14 <test_77+0x28>
 b08:	fe209f23          	sh	sp,-2(ra)
 b0c:	ffe09703          	lh	a4,-2(ra)
 b10:	0080006f          	jal	zero,b18 <test_77+0x2c>
 b14:	00010713          	addi	a4,sp,0
 b18:	ffffb3b7          	lui	t2,0xffffb
 b1c:	a003839b          	addiw	t2,t2,-1536 # ffffffffffffaa00 <_end+0xffffffffffff9a34>
 b20:	46771e63          	bne	a4,t2,f9c <fail>

0000000000000b24 <test_78>:
 b24:	04e00193          	addi	gp,zero,78
 b28:	00000097          	auipc	ra,0x0
 b2c:	4a008093          	addi	ra,ra,1184 # fc8 <tdat4LW>
 b30:	0aa01137          	lui	sp,0xaa01
 b34:	aa01011b          	addiw	sp,sp,-1376 # aa00aa0 <_end+0xa9ffad4>
 b38:	00000797          	auipc	a5,0x0
 b3c:	01478793          	addi	a5,a5,20 # b4c <test_78+0x28>
 b40:	fe20ac23          	sw	sp,-8(ra)
 b44:	ff80a703          	lw	a4,-8(ra)
 b48:	0080006f          	jal	zero,b50 <test_78+0x2c>
 b4c:	00010713          	addi	a4,sp,0
 b50:	0aa013b7          	lui	t2,0xaa01
 b54:	aa03839b          	addiw	t2,t2,-1376 # aa00aa0 <_end+0xa9ffad4>
 b58:	44771263          	bne	a4,t2,f9c <fail>

0000000000000b5c <test_79>:
 b5c:	04f00193          	addi	gp,zero,79
 b60:	00000097          	auipc	ra,0x0
 b64:	46808093          	addi	ra,ra,1128 # fc8 <tdat4LW>
 b68:	a00aa137          	lui	sp,0xa00aa
 b6c:	00a1011b          	addiw	sp,sp,10 # ffffffffa00aa00a <_end+0xffffffffa00a903e>
 b70:	00000797          	auipc	a5,0x0
 b74:	01478793          	addi	a5,a5,20 # b84 <test_79+0x28>
 b78:	fe20aa23          	sw	sp,-12(ra)
 b7c:	ff40a703          	lw	a4,-12(ra)
 b80:	0080006f          	jal	zero,b88 <test_79+0x2c>
 b84:	00010713          	addi	a4,sp,0
 b88:	a00aa3b7          	lui	t2,0xa00aa
 b8c:	00a3839b          	addiw	t2,t2,10 # ffffffffa00aa00a <_end+0xffffffffa00a903e>
 b90:	40771663          	bne	a4,t2,f9c <fail>

0000000000000b94 <test_80>:
 b94:	05000193          	addi	gp,zero,80
 b98:	00000097          	auipc	ra,0x0
 b9c:	43008093          	addi	ra,ra,1072 # fc8 <tdat4LW>
 ba0:	00aa0137          	lui	sp,0xaa0
 ba4:	0aa1011b          	addiw	sp,sp,170 # aa00aa <_end+0xa9f0de>
 ba8:	00000797          	auipc	a5,0x0
 bac:	01478793          	addi	a5,a5,20 # bbc <test_80+0x28>
 bb0:	0020a023          	sw	sp,0(ra)
 bb4:	0000a703          	lw	a4,0(ra)
 bb8:	0080006f          	jal	zero,bc0 <test_80+0x2c>
 bbc:	00010713          	addi	a4,sp,0
 bc0:	00aa03b7          	lui	t2,0xaa0
 bc4:	0aa3839b          	addiw	t2,t2,170 # aa00aa <_end+0xa9f0de>
 bc8:	3c771a63          	bne	a4,t2,f9c <fail>

0000000000000bcc <test_81>:
 bcc:	05100193          	addi	gp,zero,81
 bd0:	00000097          	auipc	ra,0x0
 bd4:	3f808093          	addi	ra,ra,1016 # fc8 <tdat4LW>
 bd8:	aa00b137          	lui	sp,0xaa00b
 bdc:	a001011b          	addiw	sp,sp,-1536 # ffffffffaa00aa00 <_end+0xffffffffaa009a34>
 be0:	00000797          	auipc	a5,0x0
 be4:	01478793          	addi	a5,a5,20 # bf4 <test_81+0x28>
 be8:	fe20ae23          	sw	sp,-4(ra)
 bec:	ffc0a703          	lw	a4,-4(ra)
 bf0:	0080006f          	jal	zero,bf8 <test_81+0x2c>
 bf4:	00010713          	addi	a4,sp,0
 bf8:	aa00b3b7          	lui	t2,0xaa00b
 bfc:	a003839b          	addiw	t2,t2,-1536 # ffffffffaa00aa00 <_end+0xffffffffaa009a34>
 c00:	38771e63          	bne	a4,t2,f9c <fail>

0000000000000c04 <test_82>:
 c04:	05200193          	addi	gp,zero,82
 c08:	00000097          	auipc	ra,0x0
 c0c:	3b408093          	addi	ra,ra,948 # fbc <tdat1LW>
 c10:	00aa0137          	lui	sp,0xaa0
 c14:	0aa1011b          	addiw	sp,sp,170 # aa00aa <_end+0xa9f0de>
 c18:	00000797          	auipc	a5,0x0
 c1c:	01478793          	addi	a5,a5,20 # c2c <test_82+0x28>
 c20:	0020a023          	sw	sp,0(ra)
 c24:	0000a703          	lw	a4,0(ra)
 c28:	0080006f          	jal	zero,c30 <test_82+0x2c>
 c2c:	00010713          	addi	a4,sp,0
 c30:	00aa03b7          	lui	t2,0xaa0
 c34:	0aa3839b          	addiw	t2,t2,170 # aa00aa <_end+0xa9f0de>
 c38:	36771263          	bne	a4,t2,f9c <fail>

0000000000000c3c <test_83>:
 c3c:	05300193          	addi	gp,zero,83
 c40:	00000097          	auipc	ra,0x0
 c44:	37c08093          	addi	ra,ra,892 # fbc <tdat1LW>
 c48:	aa00b137          	lui	sp,0xaa00b
 c4c:	a001011b          	addiw	sp,sp,-1536 # ffffffffaa00aa00 <_end+0xffffffffaa009a34>
 c50:	00000797          	auipc	a5,0x0
 c54:	01478793          	addi	a5,a5,20 # c64 <test_83+0x28>
 c58:	0020a223          	sw	sp,4(ra)
 c5c:	0040a703          	lw	a4,4(ra)
 c60:	0080006f          	jal	zero,c68 <test_83+0x2c>
 c64:	00010713          	addi	a4,sp,0
 c68:	aa00b3b7          	lui	t2,0xaa00b
 c6c:	a003839b          	addiw	t2,t2,-1536 # ffffffffaa00aa00 <_end+0xffffffffaa009a34>
 c70:	32771663          	bne	a4,t2,f9c <fail>

0000000000000c74 <test_84>:
 c74:	05400193          	addi	gp,zero,84
 c78:	00000097          	auipc	ra,0x0
 c7c:	34408093          	addi	ra,ra,836 # fbc <tdat1LW>
 c80:	0aa01137          	lui	sp,0xaa01
 c84:	aa01011b          	addiw	sp,sp,-1376 # aa00aa0 <_end+0xa9ffad4>
 c88:	00000797          	auipc	a5,0x0
 c8c:	01478793          	addi	a5,a5,20 # c9c <test_84+0x28>
 c90:	0020a423          	sw	sp,8(ra)
 c94:	0080a703          	lw	a4,8(ra)
 c98:	0080006f          	jal	zero,ca0 <test_84+0x2c>
 c9c:	00010713          	addi	a4,sp,0
 ca0:	0aa013b7          	lui	t2,0xaa01
 ca4:	aa03839b          	addiw	t2,t2,-1376 # aa00aa0 <_end+0xa9ffad4>
 ca8:	2e771a63          	bne	a4,t2,f9c <fail>

0000000000000cac <test_85>:
 cac:	05500193          	addi	gp,zero,85
 cb0:	00000097          	auipc	ra,0x0
 cb4:	30c08093          	addi	ra,ra,780 # fbc <tdat1LW>
 cb8:	a00aa137          	lui	sp,0xa00aa
 cbc:	00a1011b          	addiw	sp,sp,10 # ffffffffa00aa00a <_end+0xffffffffa00a903e>
 cc0:	00000797          	auipc	a5,0x0
 cc4:	01478793          	addi	a5,a5,20 # cd4 <test_85+0x28>
 cc8:	0020a623          	sw	sp,12(ra)
 ccc:	00c0a703          	lw	a4,12(ra)
 cd0:	0080006f          	jal	zero,cd8 <test_85+0x2c>
 cd4:	00010713          	addi	a4,sp,0
 cd8:	a00aa3b7          	lui	t2,0xa00aa
 cdc:	00a3839b          	addiw	t2,t2,10 # ffffffffa00aa00a <_end+0xffffffffa00a903e>
 ce0:	2a771e63          	bne	a4,t2,f9c <fail>

0000000000000ce4 <test_86>:
 ce4:	05600193          	addi	gp,zero,86
 ce8:	00000297          	auipc	t0,0x0
 cec:	01028293          	addi	t0,t0,16 # cf8 <target_86>
 cf0:	000282e7          	jalr	t0,0(t0)

0000000000000cf4 <linkaddr_86>:
 cf4:	2a80006f          	jal	zero,f9c <fail>

0000000000000cf8 <target_86>:
 cf8:	00000317          	auipc	t1,0x0
 cfc:	ffc30313          	addi	t1,t1,-4 # cf4 <linkaddr_86>
 d00:	28629e63          	bne	t0,t1,f9c <fail>

0000000000000d04 <test_87>:
 d04:	05700193          	addi	gp,zero,87
 d08:	000990b7          	lui	ra,0x99
 d0c:	3450809b          	addiw	ra,ra,837 # 99345 <_end+0x98379>
 d10:	00c09093          	slli	ra,ra,0xc
 d14:	67808093          	addi	ra,ra,1656
 d18:	0040971b          	slliw	a4,ra,0x4
 d1c:	934563b7          	lui	t2,0x93456
 d20:	7803839b          	addiw	t2,t2,1920 # ffffffff93456780 <_end+0xffffffff934557b4>
 d24:	26771c63          	bne	a4,t2,f9c <fail>

0000000000000d28 <test_88>:
 d28:	05800193          	addi	gp,zero,88
 d2c:	fff00093          	addi	ra,zero,-1
 d30:	01f0971b          	slliw	a4,ra,0x1f
 d34:	800003b7          	lui	t2,0x80000
 d38:	26771263          	bne	a4,t2,f9c <fail>

0000000000000d3c <test_89>:
 d3c:	05900193          	addi	gp,zero,89
 d40:	fff120b7          	lui	ra,0xfff12
 d44:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <_end+0xfffffffffff11379>
 d48:	00c09093          	slli	ra,ra,0xc
 d4c:	67808093          	addi	ra,ra,1656
 d50:	0040971b          	slliw	a4,ra,0x4
 d54:	234563b7          	lui	t2,0x23456
 d58:	7803839b          	addiw	t2,t2,1920 # 23456780 <_end+0x234557b4>
 d5c:	24771063          	bne	a4,t2,f9c <fail>

0000000000000d60 <test_90>:
 d60:	05a00193          	addi	gp,zero,90
 d64:	800000b7          	lui	ra,0x80000
 d68:	0010809b          	addiw	ra,ra,1 # ffffffff80000001 <_end+0xffffffff7ffff035>
 d6c:	01f0d71b          	srliw	a4,ra,0x1f
 d70:	00100393          	addi	t2,zero,1
 d74:	22771463          	bne	a4,t2,f9c <fail>

0000000000000d78 <test_91>:
 d78:	05b00193          	addi	gp,zero,91
 d7c:	212120b7          	lui	ra,0x21212
 d80:	1210809b          	addiw	ra,ra,289 # 21212121 <_end+0x21211155>
 d84:	0010d71b          	srliw	a4,ra,0x1
 d88:	109093b7          	lui	t2,0x10909
 d8c:	0903839b          	addiw	t2,t2,144 # 10909090 <_end+0x109080c4>
 d90:	20771663          	bne	a4,t2,f9c <fail>

0000000000000d94 <test_92>:
 d94:	05c00193          	addi	gp,zero,92
 d98:	000920b7          	lui	ra,0x92
 d9c:	3450809b          	addiw	ra,ra,837 # 92345 <_end+0x91379>
 da0:	00c09093          	slli	ra,ra,0xc
 da4:	67808093          	addi	ra,ra,1656
 da8:	0040d71b          	srliw	a4,ra,0x4
 dac:	092343b7          	lui	t2,0x9234
 db0:	5673839b          	addiw	t2,t2,1383 # 9234567 <_end+0x923359b>
 db4:	1e771463          	bne	a4,t2,f9c <fail>

0000000000000db8 <test_93>:
 db8:	05d00193          	addi	gp,zero,93
 dbc:	818180b7          	lui	ra,0x81818
 dc0:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <_end+0xffffffff818171b5>
 dc4:	40e0d71b          	sraiw	a4,ra,0xe
 dc8:	fffe03b7          	lui	t2,0xfffe0
 dcc:	6063839b          	addiw	t2,t2,1542 # fffffffffffe0606 <_end+0xfffffffffffdf63a>
 dd0:	1c771663          	bne	a4,t2,f9c <fail>

0000000000000dd4 <test_94>:
 dd4:	05e00193          	addi	gp,zero,94
 dd8:	000920b7          	lui	ra,0x92
 ddc:	3450809b          	addiw	ra,ra,837 # 92345 <_end+0x91379>
 de0:	00c09093          	slli	ra,ra,0xc
 de4:	67808093          	addi	ra,ra,1656
 de8:	4040d71b          	sraiw	a4,ra,0x4
 dec:	f92343b7          	lui	t2,0xf9234
 df0:	5673839b          	addiw	t2,t2,1383 # fffffffff9234567 <_end+0xfffffffff923359b>
 df4:	1a771463          	bne	a4,t2,f9c <fail>

0000000000000df8 <test_95>:
 df8:	05f00193          	addi	gp,zero,95
 dfc:	800000b7          	lui	ra,0x80000
 e00:	fff0809b          	addiw	ra,ra,-1 # 7fffffff <_end+0x7ffff033>
 e04:	00008137          	lui	sp,0x8
 e08:	fff1011b          	addiw	sp,sp,-1 # 7fff <_end+0x7033>
 e0c:	0020873b          	addw	a4,ra,sp
 e10:	800083b7          	lui	t2,0x80008
 e14:	ffe3839b          	addiw	t2,t2,-2 # ffffffff80007ffe <_end+0xffffffff80007032>
 e18:	18771263          	bne	a4,t2,f9c <fail>

0000000000000e1c <test_96>:
 e1c:	06000193          	addi	gp,zero,96
 e20:	00100093          	addi	ra,zero,1
 e24:	80000137          	lui	sp,0x80000
 e28:	fff1011b          	addiw	sp,sp,-1 # 7fffffff <_end+0x7ffff033>
 e2c:	0020873b          	addw	a4,ra,sp
 e30:	800003b7          	lui	t2,0x80000
 e34:	16771463          	bne	a4,t2,f9c <fail>

0000000000000e38 <test_97>:
 e38:	06100193          	addi	gp,zero,97
 e3c:	00000093          	addi	ra,zero,0
 e40:	fff00113          	addi	sp,zero,-1
 e44:	4020873b          	subw	a4,ra,sp
 e48:	00100393          	addi	t2,zero,1
 e4c:	14771863          	bne	a4,t2,f9c <fail>

0000000000000e50 <test_98>:
 e50:	06200193          	addi	gp,zero,98
 e54:	800000b7          	lui	ra,0x80000
 e58:	00000113          	addi	sp,zero,0
 e5c:	4020873b          	subw	a4,ra,sp
 e60:	800003b7          	lui	t2,0x80000
 e64:	12771c63          	bne	a4,t2,f9c <fail>

0000000000000e68 <test_99>:
 e68:	06300193          	addi	gp,zero,99
 e6c:	212120b7          	lui	ra,0x21212
 e70:	1210809b          	addiw	ra,ra,289 # 21212121 <_end+0x21211155>
 e74:	01f00113          	addi	sp,zero,31
 e78:	0020973b          	sllw	a4,ra,sp
 e7c:	800003b7          	lui	t2,0x80000
 e80:	10771e63          	bne	a4,t2,f9c <fail>

0000000000000e84 <test_100>:
 e84:	06400193          	addi	gp,zero,100
 e88:	212120b7          	lui	ra,0x21212
 e8c:	1210809b          	addiw	ra,ra,289 # 21212121 <_end+0x21211155>
 e90:	fee00113          	addi	sp,zero,-18
 e94:	0020973b          	sllw	a4,ra,sp
 e98:	484843b7          	lui	t2,0x48484
 e9c:	10771063          	bne	a4,t2,f9c <fail>

0000000000000ea0 <test_101>:
 ea0:	06500193          	addi	gp,zero,101
 ea4:	fff120b7          	lui	ra,0xfff12
 ea8:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <_end+0xfffffffffff11379>
 eac:	00c09093          	slli	ra,ra,0xc
 eb0:	67808093          	addi	ra,ra,1656
 eb4:	00400113          	addi	sp,zero,4
 eb8:	0020973b          	sllw	a4,ra,sp
 ebc:	234563b7          	lui	t2,0x23456
 ec0:	7803839b          	addiw	t2,t2,1920 # 23456780 <_end+0x234557b4>
 ec4:	0c771c63          	bne	a4,t2,f9c <fail>

0000000000000ec8 <test_102>:
 ec8:	06600193          	addi	gp,zero,102
 ecc:	212120b7          	lui	ra,0x21212
 ed0:	1210809b          	addiw	ra,ra,289 # 21212121 <_end+0x21211155>
 ed4:	00e00113          	addi	sp,zero,14
 ed8:	0020d73b          	srlw	a4,ra,sp
 edc:	000083b7          	lui	t2,0x8
 ee0:	4843839b          	addiw	t2,t2,1156 # 8484 <_end+0x74b8>
 ee4:	0a771c63          	bne	a4,t2,f9c <fail>

0000000000000ee8 <test_103>:
 ee8:	06700193          	addi	gp,zero,103
 eec:	212120b7          	lui	ra,0x21212
 ef0:	1210809b          	addiw	ra,ra,289 # 21212121 <_end+0x21211155>
 ef4:	fe100113          	addi	sp,zero,-31
 ef8:	0020d73b          	srlw	a4,ra,sp
 efc:	109093b7          	lui	t2,0x10909
 f00:	0903839b          	addiw	t2,t2,144 # 10909090 <_end+0x109080c4>
 f04:	08771c63          	bne	a4,t2,f9c <fail>

0000000000000f08 <test_104>:
 f08:	06800193          	addi	gp,zero,104
 f0c:	fff120b7          	lui	ra,0xfff12
 f10:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <_end+0xfffffffffff11379>
 f14:	00c09093          	slli	ra,ra,0xc
 f18:	67808093          	addi	ra,ra,1656
 f1c:	00400113          	addi	sp,zero,4
 f20:	0020d73b          	srlw	a4,ra,sp
 f24:	012343b7          	lui	t2,0x1234
 f28:	5673839b          	addiw	t2,t2,1383 # 1234567 <_end+0x123359b>
 f2c:	06771863          	bne	a4,t2,f9c <fail>

0000000000000f30 <test_105>:
 f30:	06900193          	addi	gp,zero,105
 f34:	818180b7          	lui	ra,0x81818
 f38:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <_end+0xffffffff818171b5>
 f3c:	00e00113          	addi	sp,zero,14
 f40:	4020d73b          	sraw	a4,ra,sp
 f44:	fffe03b7          	lui	t2,0xfffe0
 f48:	6063839b          	addiw	t2,t2,1542 # fffffffffffe0606 <_end+0xfffffffffffdf63a>
 f4c:	04771863          	bne	a4,t2,f9c <fail>

0000000000000f50 <test_106>:
 f50:	06a00193          	addi	gp,zero,106
 f54:	818180b7          	lui	ra,0x81818
 f58:	1810809b          	addiw	ra,ra,385 # ffffffff81818181 <_end+0xffffffff818171b5>
 f5c:	fe700113          	addi	sp,zero,-25
 f60:	4020d73b          	sraw	a4,ra,sp
 f64:	ff0303b7          	lui	t2,0xff030
 f68:	3033839b          	addiw	t2,t2,771 # ffffffffff030303 <_end+0xffffffffff02f337>
 f6c:	02771863          	bne	a4,t2,f9c <fail>

0000000000000f70 <test_107>:
 f70:	06b00193          	addi	gp,zero,107
 f74:	fff120b7          	lui	ra,0xfff12
 f78:	3450809b          	addiw	ra,ra,837 # fffffffffff12345 <_end+0xfffffffffff11379>
 f7c:	00c09093          	slli	ra,ra,0xc
 f80:	67808093          	addi	ra,ra,1656
 f84:	00400113          	addi	sp,zero,4
 f88:	4020d73b          	sraw	a4,ra,sp
 f8c:	012343b7          	lui	t2,0x1234
 f90:	5673839b          	addiw	t2,t2,1383 # 1234567 <_end+0x123359b>
 f94:	00771463          	bne	a4,t2,f9c <fail>
 f98:	00301663          	bne	zero,gp,fa4 <pass>

0000000000000f9c <fail>:
 f9c:	00100093          	addi	ra,zero,1
 fa0:	c0001073          	unimp

0000000000000fa4 <pass>:
 fa4:	00000093          	addi	ra,zero,0
 fa8:	c0001073          	unimp

Disassembly of section .data:

0000000000000fb0 <tdat1LB>:
 fb0:	    	.byte	0xff, 0x00, 0xf0, 0x0f, 0xff, 0x00, 0x00, 0xff, 0xf0, 0x0f
 fb8:	 

0000000000000fb1 <tdat2LB>:
	...

0000000000000fb2 <tdat3LB>:
 fb2:	                	.2byte	0xff0

0000000000000fb3 <tdat4LB>:
 fb3:	          	.4byte	0xff0f

0000000000000fb4 <tdat1LH>:
 fb4:	00ff    	.byte	0xff, 0x00, 0x00, 0xff, 0xf0, 0x0f, 0x0f, 0xf0, 0xff, 0x00
 fbc:	 

0000000000000fb6 <tdat2LH>:
 fb6:	ff00                	.2byte	0xff00

0000000000000fb8 <tdat3LH>:
 fb8:	0ff0                	.2byte	0xff0

0000000000000fba <tdat4LH>:
 fba:	          	.4byte	0xfff00f

0000000000000fbc <tdat1LW>:
 fbc:	00ff 00ff   	.byte	0xff, 0x00, 0xff, 0x00, 0x00, 0xff, 0x00, 0xff, 0xf0, 0x0f
 fc4:	 

0000000000000fc0 <tdat2LW>:
 fc0:	ff00                	.2byte	0xff00
 fc2:	ff00                	.2byte	0xff00

0000000000000fc4 <tdat3LW>:
 fc4:	0ff0                	.2byte	0xff0
 fc6:	0ff0                	.2byte	0xff0

0000000000000fc8 <tdat4LW>:
 fc8:	f00ff00f          	.4byte	0xf00ff00f

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
