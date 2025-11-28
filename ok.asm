./.zig-cache/o/08131b3679fab56ed52e7f0cf6f98588/test:     file format elf64-x86-64

Disassembly of section .text:

000000000103b0e0 <lib.deunicodeCustomAlloc>:
 103b0e0:	55                   	push   rbp
 103b0e1:	48 89 e5             	mov    rbp,rsp
 103b0e4:	48 81 ec 10 05 00 00 	sub    rsp,0x510
 103b0eb:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
 103b0f0:	c5 fa 6f 45 10       	vmovdqu xmm0,XMMWORD PTR [rbp+0x10]
 103b0f5:	c5 fa 7f 44 24 48    	vmovdqu XMMWORD PTR [rsp+0x48],xmm0
 103b0fb:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
 103b100:	48 89 5c 24 60       	mov    QWORD PTR [rsp+0x60],rbx
 103b105:	48 89 4c 24 68       	mov    QWORD PTR [rsp+0x68],rcx
 103b10a:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
 103b10f:	c5 fa 6f 45 10       	vmovdqu xmm0,XMMWORD PTR [rbp+0x10]
 103b114:	c5 fa 7f 44 24 78    	vmovdqu XMMWORD PTR [rsp+0x78],xmm0
 103b11a:	48 89 94 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdx
 103b121:	00
 103b122:	48 89 9c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rbx
 103b129:	00
 103b12a:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
 103b131:	00
 103b132:	48 89 b4 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rsi
 103b139:	00
 103b13a:	48 c7 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],0x0
 103b141:	00 00 00 00 00
 103b146:	48 c7 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],0x0
 103b14d:	00 00 00 00 00
 103b152:	48 89 d8             	mov    rax,rbx
 103b155:	48 8b bc 24 b0 00 00 	mov    rdi,QWORD PTR [rsp+0xb0]
 103b15c:	00
 103b15d:	49 89 f8             	mov    r8,rdi
 103b160:	49 89 c2             	mov    r10,rax
 103b163:	4d 39 d0             	cmp    r8,r10
 103b166:	0f 83 81 00 00 00    	jae    103b1ed <lib.deunicodeCustomAlloc+0x10d>
 103b16c:	49 89 d0             	mov    r8,rdx
 103b16f:	45 0f b6 14 38       	movzx  r10d,BYTE PTR [r8+rdi*1]
 103b174:	44 88 94 24 f2 04 00 	mov    BYTE PTR [rsp+0x4f2],r10b
 103b17b:	00
 103b17c:	41 80 fa 7f          	cmp    r10b,0x7f
 103b180:	0f 83 5d 00 00 00    	jae    103b1e3 <lib.deunicodeCustomAlloc+0x103>
 103b186:	4c 8b 84 24 a8 00 00 	mov    r8,QWORD PTR [rsp+0xa8]
 103b18d:	00
 103b18e:	49 83 c0 01          	add    r8,0x1
 103b192:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
 103b199:	00
 103b19a:	0f 92 84 24 c0 00 00 	setb   BYTE PTR [rsp+0xc0]
 103b1a1:	00
 103b1a2:	44 8a 94 24 c0 00 00 	mov    r10b,BYTE PTR [rsp+0xc0]
 103b1a9:	00
 103b1aa:	4c 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],r8
 103b1b1:	00
 103b1b2:	0f 92 84 24 d0 00 00 	setb   BYTE PTR [rsp+0xd0]
 103b1b9:	00
 103b1ba:	41 80 fa 01          	cmp    r10b,0x1
 103b1be:	0f 85 05 00 00 00    	jne    103b1c9 <lib.deunicodeCustomAlloc+0xe9>
 103b1c4:	e8 87 40 00 00       	call   103f250 <debug.FullPanic((function 'defaultPanic')).integerOverflow>
 103b1c9:	4c 8b 84 24 c8 00 00 	mov    r8,QWORD PTR [rsp+0xc8]
 103b1d0:	00
 103b1d1:	e9 00 00 00 00       	jmp    103b1d6 <lib.deunicodeCustomAlloc+0xf6>
 103b1d6:	4c 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r8
 103b1dd:	00
 103b1de:	e9 0f 00 00 00       	jmp    103b1f2 <lib.deunicodeCustomAlloc+0x112>
 103b1e3:	e9 00 00 00 00       	jmp    103b1e8 <lib.deunicodeCustomAlloc+0x108>
 103b1e8:	e9 16 00 00 00       	jmp    103b203 <lib.deunicodeCustomAlloc+0x123>
 103b1ed:	e9 11 00 00 00       	jmp    103b203 <lib.deunicodeCustomAlloc+0x123>
 103b1f2:	48 83 c7 01          	add    rdi,0x1
 103b1f6:	48 89 bc 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdi
 103b1fd:	00
 103b1fe:	e9 52 ff ff ff       	jmp    103b155 <lib.deunicodeCustomAlloc+0x75>
 103b203:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
 103b20a:	00
 103b20b:	48 8b bc 24 90 00 00 	mov    rdi,QWORD PTR [rsp+0x90]
 103b212:	00
 103b213:	48 39 f8             	cmp    rax,rdi
 103b216:	0f 82 d0 00 00 00    	jb     103b2ec <lib.deunicodeCustomAlloc+0x20c>
 103b21c:	c5 fa 6f 44 24 78    	vmovdqu xmm0,XMMWORD PTR [rsp+0x78]
 103b222:	c5 fa 7f 84 24 d8 00 	vmovdqu XMMWORD PTR [rsp+0xd8],xmm0
 103b229:	00 00
 103b22b:	48 89 94 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rdx
 103b232:	00
 103b233:	48 89 9c 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rbx
 103b23a:	00
 103b23b:	c5 fa 6f 84 24 d8 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0xd8]
 103b242:	00 00
 103b244:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b249:	48 8d 84 24 f8 00 00 	lea    rax,[rsp+0xf8]
 103b250:	00
 103b251:	48 8b 94 24 e8 00 00 	mov    rdx,QWORD PTR [rsp+0xe8]
 103b258:	00
 103b259:	48 8b 9c 24 f0 00 00 	mov    rbx,QWORD PTR [rsp+0xf0]
 103b260:	00
 103b261:	e8 3a 40 00 00       	call   103f2a0 <mem.Allocator.dupe__anon_2054>
 103b266:	66 83 bc 24 08 01 00 	cmp    WORD PTR [rsp+0x108],0x0
 103b26d:	00 00
 103b26f:	0f 86 38 00 00 00    	jbe    103b2ad <lib.deunicodeCustomAlloc+0x1cd>
 103b275:	66 8b 84 24 08 01 00 	mov    ax,WORD PTR [rsp+0x108]
 103b27c:	00
 103b27d:	66 89 84 24 20 01 00 	mov    WORD PTR [rsp+0x120],ax
 103b284:	00
 103b285:	e8 96 42 00 00       	call   103f520 <builtin.returnError>
 103b28a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b28f:	c5 fa 6f 84 24 10 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x110]
 103b296:	00 00
 103b298:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b29c:	48 8b 94 24 20 01 00 	mov    rdx,QWORD PTR [rsp+0x120]
 103b2a3:	00
 103b2a4:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b2a8:	e9 5e 0a 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b2ad:	c5 fa 6f 84 24 f8 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0xf8]
 103b2b4:	00 00
 103b2b6:	c5 fa 7f 84 24 28 01 	vmovdqu XMMWORD PTR [rsp+0x128],xmm0
 103b2bd:	00 00
 103b2bf:	66 c7 84 24 38 01 00 	mov    WORD PTR [rsp+0x138],0x0
 103b2c6:	00 00 00
 103b2c9:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b2ce:	c5 fa 6f 84 24 28 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x128]
 103b2d5:	00 00
 103b2d7:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b2db:	48 8b 94 24 38 01 00 	mov    rdx,QWORD PTR [rsp+0x138]
 103b2e2:	00
 103b2e3:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b2e7:	e9 1f 0a 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b2ec:	e9 00 00 00 00       	jmp    103b2f1 <lib.deunicodeCustomAlloc+0x211>
 103b2f1:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
 103b2f8:	00
 103b2f9:	48 83 c8 0f          	or     rax,0xf
 103b2fd:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
 103b304:	00
 103b305:	48 89 8c 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rcx
 103b30c:	00
 103b30d:	48 89 b4 24 78 01 00 	mov    QWORD PTR [rsp+0x178],rsi
 103b314:	00
 103b315:	c5 fa 6f 45 10       	vmovdqu xmm0,XMMWORD PTR [rbp+0x10]
 103b31a:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b31f:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
 103b326:	00
 103b327:	48 8b 94 24 68 01 00 	mov    rdx,QWORD PTR [rsp+0x168]
 103b32e:	00
 103b32f:	e8 9c 42 00 00       	call   103f5d0 <array_list.AlignedManaged(u8,null).initCapacity>
 103b334:	66 83 bc 24 a8 01 00 	cmp    WORD PTR [rsp+0x1a8],0x0
 103b33b:	00 00
 103b33d:	0f 86 38 00 00 00    	jbe    103b37b <lib.deunicodeCustomAlloc+0x29b>
 103b343:	66 8b 84 24 a8 01 00 	mov    ax,WORD PTR [rsp+0x1a8]
 103b34a:	00
 103b34b:	66 89 84 24 c0 01 00 	mov    WORD PTR [rsp+0x1c0],ax
 103b352:	00
 103b353:	e8 c8 41 00 00       	call   103f520 <builtin.returnError>
 103b358:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b35d:	c5 fa 6f 84 24 b0 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x1b0]
 103b364:	00 00
 103b366:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b36a:	48 8b 94 24 c0 01 00 	mov    rdx,QWORD PTR [rsp+0x1c0]
 103b371:	00
 103b372:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b376:	e9 90 09 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b37b:	c5 fe 6f 84 24 80 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x180]
 103b382:	00 00
 103b384:	c5 fe 7f 84 24 40 01 	vmovdqu YMMWORD PTR [rsp+0x140],ymm0
 103b38b:	00 00
 103b38d:	48 8b 84 24 a0 01 00 	mov    rax,QWORD PTR [rsp+0x1a0]
 103b394:	00
 103b395:	48 89 84 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rax
 103b39c:	00
 103b39d:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
 103b3a4:	00
 103b3a5:	c5 fa 6f 84 24 88 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0x88]
 103b3ac:	00 00
 103b3ae:	c5 fa 7f 84 24 c8 01 	vmovdqu XMMWORD PTR [rsp+0x1c8],xmm0
 103b3b5:	00 00
 103b3b7:	48 8b 94 24 c8 01 00 	mov    rdx,QWORD PTR [rsp+0x1c8]
 103b3be:	00
 103b3bf:	48 8d 1a             	lea    rbx,[rdx]
 103b3c2:	48 83 f8 00          	cmp    rax,0x0
 103b3c6:	0f 82 05 00 00 00    	jb     103b3d1 <lib.deunicodeCustomAlloc+0x2f1>
 103b3cc:	e9 17 00 00 00       	jmp    103b3e8 <lib.deunicodeCustomAlloc+0x308>
 103b3d1:	48 89 84 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rax
 103b3d8:	00
 103b3d9:	31 c0                	xor    eax,eax
 103b3db:	48 8b 94 24 d8 01 00 	mov    rdx,QWORD PTR [rsp+0x1d8]
 103b3e2:	00
 103b3e3:	e8 78 43 00 00       	call   103f760 <debug.FullPanic((function 'defaultPanic')).startGreaterThanEnd>
 103b3e8:	48 89 c2             	mov    rdx,rax
 103b3eb:	48 83 ea 00          	sub    rdx,0x0
 103b3ef:	48 3b 84 24 d0 01 00 	cmp    rax,QWORD PTR [rsp+0x1d0]
 103b3f6:	00
 103b3f7:	0f 87 05 00 00 00    	ja     103b402 <lib.deunicodeCustomAlloc+0x322>
 103b3fd:	e9 1d 00 00 00       	jmp    103b41f <lib.deunicodeCustomAlloc+0x33f>
 103b402:	48 89 84 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rax
 103b409:	00
 103b40a:	48 8b 84 24 d8 01 00 	mov    rax,QWORD PTR [rsp+0x1d8]
 103b411:	00
 103b412:	48 8b 94 24 d0 01 00 	mov    rdx,QWORD PTR [rsp+0x1d0]
 103b419:	00
 103b41a:	e8 a1 43 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b41f:	48 83 f8 00          	cmp    rax,0x0
 103b423:	0f 82 05 00 00 00    	jb     103b42e <lib.deunicodeCustomAlloc+0x34e>
 103b429:	e9 17 00 00 00       	jmp    103b445 <lib.deunicodeCustomAlloc+0x365>
 103b42e:	48 89 84 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rax
 103b435:	00
 103b436:	31 c0                	xor    eax,eax
 103b438:	48 8b 94 24 d8 01 00 	mov    rdx,QWORD PTR [rsp+0x1d8]
 103b43f:	00
 103b440:	e8 7b 43 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b445:	48 89 9c 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],rbx
 103b44c:	00
 103b44d:	48 89 94 24 e8 01 00 	mov    QWORD PTR [rsp+0x1e8],rdx
 103b454:	00
 103b455:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
 103b45c:	00
 103b45d:	c5 fa 6f 84 24 88 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0x88]
 103b464:	00 00
 103b466:	c5 fa 7f 84 24 f0 01 	vmovdqu XMMWORD PTR [rsp+0x1f0],xmm0
 103b46d:	00 00
 103b46f:	48 8b 8c 24 f0 01 00 	mov    rcx,QWORD PTR [rsp+0x1f0]
 103b476:	00
 103b477:	48 8d 34 01          	lea    rsi,[rcx+rax*1]
 103b47b:	48 8b 8c 24 f8 01 00 	mov    rcx,QWORD PTR [rsp+0x1f8]
 103b482:	00
 103b483:	48 39 c1             	cmp    rcx,rax
 103b486:	0f 82 05 00 00 00    	jb     103b491 <lib.deunicodeCustomAlloc+0x3b1>
 103b48c:	e9 25 00 00 00       	jmp    103b4b6 <lib.deunicodeCustomAlloc+0x3d6>
 103b491:	48 89 84 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rax
 103b498:	00
 103b499:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
 103b4a0:	00
 103b4a1:	48 8b 84 24 00 02 00 	mov    rax,QWORD PTR [rsp+0x200]
 103b4a8:	00
 103b4a9:	48 8b 94 24 08 02 00 	mov    rdx,QWORD PTR [rsp+0x208]
 103b4b0:	00
 103b4b1:	e8 aa 42 00 00       	call   103f760 <debug.FullPanic((function 'defaultPanic')).startGreaterThanEnd>
 103b4b6:	48 89 cf             	mov    rdi,rcx
 103b4b9:	48 29 c7             	sub    rdi,rax
 103b4bc:	48 3b 8c 24 f8 01 00 	cmp    rcx,QWORD PTR [rsp+0x1f8]
 103b4c3:	00
 103b4c4:	0f 87 05 00 00 00    	ja     103b4cf <lib.deunicodeCustomAlloc+0x3ef>
 103b4ca:	e9 1d 00 00 00       	jmp    103b4ec <lib.deunicodeCustomAlloc+0x40c>
 103b4cf:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
 103b4d6:	00
 103b4d7:	48 8b 84 24 08 02 00 	mov    rax,QWORD PTR [rsp+0x208]
 103b4de:	00
 103b4df:	48 8b 94 24 f8 01 00 	mov    rdx,QWORD PTR [rsp+0x1f8]
 103b4e6:	00
 103b4e7:	e8 d4 42 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b4ec:	48 39 c1             	cmp    rcx,rax
 103b4ef:	0f 82 05 00 00 00    	jb     103b4fa <lib.deunicodeCustomAlloc+0x41a>
 103b4f5:	e9 25 00 00 00       	jmp    103b51f <lib.deunicodeCustomAlloc+0x43f>
 103b4fa:	48 89 84 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rax
 103b501:	00
 103b502:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
 103b509:	00
 103b50a:	48 8b 84 24 00 02 00 	mov    rax,QWORD PTR [rsp+0x200]
 103b511:	00
 103b512:	48 8b 94 24 08 02 00 	mov    rdx,QWORD PTR [rsp+0x208]
 103b519:	00
 103b51a:	e8 a1 42 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b51f:	48 89 b4 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rsi
 103b526:	00
 103b527:	48 89 bc 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rdi
 103b52e:	00
 103b52f:	48 89 9c 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rbx
 103b536:	00
 103b537:	48 89 94 24 28 02 00 	mov    QWORD PTR [rsp+0x228],rdx
 103b53e:	00
 103b53f:	48 89 b4 24 30 02 00 	mov    QWORD PTR [rsp+0x230],rsi
 103b546:	00
 103b547:	48 89 bc 24 38 02 00 	mov    QWORD PTR [rsp+0x238],rdi
 103b54e:	00
 103b54f:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
 103b556:	00
 103b557:	48 8b 94 24 20 02 00 	mov    rdx,QWORD PTR [rsp+0x220]
 103b55e:	00
 103b55f:	48 8b 9c 24 28 02 00 	mov    rbx,QWORD PTR [rsp+0x228]
 103b566:	00
 103b567:	e8 b4 42 00 00       	call   103f820 <array_list.AlignedManaged(u8,null).appendSliceAssumeCapacity>
 103b56c:	48 8d 84 24 58 02 00 	lea    rax,[rsp+0x258]
 103b573:	00
 103b574:	48 8b 94 24 30 02 00 	mov    rdx,QWORD PTR [rsp+0x230]
 103b57b:	00
 103b57c:	48 8b 9c 24 38 02 00 	mov    rbx,QWORD PTR [rsp+0x238]
 103b583:	00
 103b584:	e8 77 fa ff ff       	call   103b000 <unicode.Utf8View.init>
 103b589:	c5 fa 6f 84 24 58 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x258]
 103b590:	00 00
 103b592:	c5 fa 7f 84 24 70 02 	vmovdqu XMMWORD PTR [rsp+0x270],xmm0
 103b599:	00 00
 103b59b:	48 8b 84 24 68 02 00 	mov    rax,QWORD PTR [rsp+0x268]
 103b5a2:	00
 103b5a3:	48 89 84 24 80 02 00 	mov    QWORD PTR [rsp+0x280],rax
 103b5aa:	00
 103b5ab:	48 8d 84 24 70 02 00 	lea    rax,[rsp+0x270]
 103b5b2:	00
 103b5b3:	66 83 78 10 00       	cmp    WORD PTR [rax+0x10],0x0
 103b5b8:	0f 86 8a 00 00 00    	jbe    103b648 <lib.deunicodeCustomAlloc+0x568>
 103b5be:	66 8b 84 24 80 02 00 	mov    ax,WORD PTR [rsp+0x280]
 103b5c5:	00
 103b5c6:	c5 fe 6f 84 24 40 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x140]
 103b5cd:	00 00
 103b5cf:	c5 fe 7f 84 24 88 02 	vmovdqu YMMWORD PTR [rsp+0x288],ymm0
 103b5d6:	00 00
 103b5d8:	48 8b 94 24 60 01 00 	mov    rdx,QWORD PTR [rsp+0x160]
 103b5df:	00
 103b5e0:	48 89 94 24 a8 02 00 	mov    QWORD PTR [rsp+0x2a8],rdx
 103b5e7:	00
 103b5e8:	66 89 84 24 e8 04 00 	mov    WORD PTR [rsp+0x4e8],ax
 103b5ef:	00
 103b5f0:	c5 fe 6f 84 24 88 02 	vmovdqu ymm0,YMMWORD PTR [rsp+0x288]
 103b5f7:	00 00
 103b5f9:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b5fe:	48 8b 84 24 a8 02 00 	mov    rax,QWORD PTR [rsp+0x2a8]
 103b605:	00
 103b606:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b60b:	e8 30 45 00 00       	call   103fb40 <array_list.AlignedManaged(u8,null).deinit>
 103b610:	66 8b 84 24 e8 04 00 	mov    ax,WORD PTR [rsp+0x4e8]
 103b617:	00
 103b618:	66 89 84 24 c0 02 00 	mov    WORD PTR [rsp+0x2c0],ax
 103b61f:	00
 103b620:	e8 fb 3e 00 00       	call   103f520 <builtin.returnError>
 103b625:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b62a:	c5 fa 6f 84 24 b0 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2b0]
 103b631:	00 00
 103b633:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b637:	48 8b 94 24 c0 02 00 	mov    rdx,QWORD PTR [rsp+0x2c0]
 103b63e:	00
 103b63f:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b643:	e9 c3 06 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b648:	48 8d 84 24 70 02 00 	lea    rax,[rsp+0x270]
 103b64f:	00
 103b650:	48 83 c0 00          	add    rax,0x0
 103b654:	c5 fa 6f 00          	vmovdqu xmm0,XMMWORD PTR [rax]
 103b658:	c5 fa 7f 84 24 c8 02 	vmovdqu XMMWORD PTR [rsp+0x2c8],xmm0
 103b65f:	00 00
 103b661:	c5 fa 6f 84 24 c8 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2c8]
 103b668:	00 00
 103b66a:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b66f:	48 8d 84 24 d8 02 00 	lea    rax,[rsp+0x2d8]
 103b676:	00
 103b677:	e8 c4 45 00 00       	call   103fc40 <unicode.Utf8View.iterator>
 103b67c:	c5 fa 6f 84 24 d8 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2d8]
 103b683:	00 00
 103b685:	c5 fa 7f 84 24 40 02 	vmovdqu XMMWORD PTR [rsp+0x240],xmm0
 103b68c:	00 00
 103b68e:	48 8b 84 24 e8 02 00 	mov    rax,QWORD PTR [rsp+0x2e8]
 103b695:	00
 103b696:	48 89 84 24 50 02 00 	mov    QWORD PTR [rsp+0x250],rax
 103b69d:	00
 103b69e:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
 103b6a5:	00
 103b6a6:	e8 15 46 00 00       	call   103fcc0 <unicode.Utf8Iterator.nextCodepoint>
 103b6ab:	48 89 84 24 d8 04 00 	mov    QWORD PTR [rsp+0x4d8],rax
 103b6b2:	00
 103b6b3:	c6 84 24 f3 04 00 00 	mov    BYTE PTR [rsp+0x4f3],0x0
 103b6ba:	00
 103b6bb:	48 8d 84 24 f0 02 00 	lea    rax,[rsp+0x2f0]
 103b6c2:	00
 103b6c3:	48 89 84 24 00 03 00 	mov    QWORD PTR [rsp+0x300],rax
 103b6ca:	00
 103b6cb:	48 8b bc 24 00 03 00 	mov    rdi,QWORD PTR [rsp+0x300]
 103b6d2:	00
 103b6d3:	c6 84 24 f4 04 00 00 	mov    BYTE PTR [rsp+0x4f4],0xaa
 103b6da:	aa
 103b6db:	8a 84 24 f4 04 00 00 	mov    al,BYTE PTR [rsp+0x4f4]
 103b6e2:	48 c7 84 24 08 03 00 	mov    QWORD PTR [rsp+0x308],0x10
 103b6e9:	00 10 00 00 00
 103b6ee:	48 8b 8c 24 08 03 00 	mov    rcx,QWORD PTR [rsp+0x308]
 103b6f5:	00
 103b6f6:	f3 aa                	rep stos BYTE PTR [rdi],al
 103b6f8:	48 8b 84 24 d8 04 00 	mov    rax,QWORD PTR [rsp+0x4d8]
 103b6ff:	00
 103b700:	48 89 84 24 10 03 00 	mov    QWORD PTR [rsp+0x310],rax
 103b707:	00
 103b708:	80 bc 24 14 03 00 00 	cmp    BYTE PTR [rsp+0x314],0x0
 103b70f:	00
 103b710:	0f 84 3a 05 00 00    	je     103bc50 <lib.deunicodeCustomAlloc+0xb70>
 103b716:	8a 84 24 f3 04 00 00 	mov    al,BYTE PTR [rsp+0x4f3]
 103b71d:	a8 01                	test   al,0x1
 103b71f:	0f 84 17 00 00 00    	je     103b73c <lib.deunicodeCustomAlloc+0x65c>
 103b725:	c5 fa 6f 84 24 f0 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2f0]
 103b72c:	00 00
 103b72e:	c5 fa 7f 84 24 18 03 	vmovdqu XMMWORD PTR [rsp+0x318],xmm0
 103b735:	00 00
 103b737:	e9 6f 00 00 00       	jmp    103b7ab <lib.deunicodeCustomAlloc+0x6cb>
 103b73c:	48 8b 84 24 d8 04 00 	mov    rax,QWORD PTR [rsp+0x4d8]
 103b743:	00
 103b744:	48 89 84 24 28 03 00 	mov    QWORD PTR [rsp+0x328],rax
 103b74b:	00
 103b74c:	80 bc 24 2c 03 00 00 	cmp    BYTE PTR [rsp+0x32c],0x0
 103b753:	00
 103b754:	0f 84 05 00 00 00    	je     103b75f <lib.deunicodeCustomAlloc+0x67f>
 103b75a:	e9 05 00 00 00       	jmp    103b764 <lib.deunicodeCustomAlloc+0x684>
 103b75f:	e8 7c 46 00 00       	call   103fde0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103b764:	48 89 84 24 30 03 00 	mov    QWORD PTR [rsp+0x330],rax
 103b76b:	00
 103b76c:	8b 94 24 30 03 00 00 	mov    edx,DWORD PTR [rsp+0x330]
 103b773:	89 94 24 e0 04 00 00 	mov    DWORD PTR [rsp+0x4e0],edx
 103b77a:	8b 84 24 e0 04 00 00 	mov    eax,DWORD PTR [rsp+0x4e0]
 103b781:	e8 aa 46 00 00       	call   103fe30 <lib.getReplacement>
 103b786:	48 89 84 24 18 03 00 	mov    QWORD PTR [rsp+0x318],rax
 103b78d:	00
 103b78e:	48 89 94 24 20 03 00 	mov    QWORD PTR [rsp+0x320],rdx
 103b795:	00
 103b796:	48 89 84 24 18 03 00 	mov    QWORD PTR [rsp+0x318],rax
 103b79d:	00
 103b79e:	48 89 94 24 20 03 00 	mov    QWORD PTR [rsp+0x320],rdx
 103b7a5:	00
 103b7a6:	e9 00 00 00 00       	jmp    103b7ab <lib.deunicodeCustomAlloc+0x6cb>
 103b7ab:	c5 fa 6f 84 24 18 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x318]
 103b7b2:	00 00
 103b7b4:	c5 fa 7f 84 24 38 03 	vmovdqu XMMWORD PTR [rsp+0x338],xmm0
 103b7bb:	00 00
 103b7bd:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
 103b7c4:	00
 103b7c5:	e8 f6 44 00 00       	call   103fcc0 <unicode.Utf8Iterator.nextCodepoint>
 103b7ca:	48 89 84 24 d8 04 00 	mov    QWORD PTR [rsp+0x4d8],rax
 103b7d1:	00
 103b7d2:	c6 84 24 f3 04 00 00 	mov    BYTE PTR [rsp+0x4f3],0x0
 103b7d9:	00
 103b7da:	48 83 bc 24 18 03 00 	cmp    QWORD PTR [rsp+0x318],0x0
 103b7e1:	00 00
 103b7e3:	0f 85 e7 00 00 00    	jne    103b8d0 <lib.deunicodeCustomAlloc+0x7f0>
 103b7e9:	48 8b 84 24 a0 00 00 	mov    rax,QWORD PTR [rsp+0xa0]
 103b7f0:	00
 103b7f1:	48 83 f8 00          	cmp    rax,0x0
 103b7f5:	0f 97 84 24 f5 04 00 	seta   BYTE PTR [rsp+0x4f5]
 103b7fc:	00
 103b7fd:	8a 84 24 f5 04 00 00 	mov    al,BYTE PTR [rsp+0x4f5]
 103b804:	e8 e7 4a 00 00       	call   10402f0 <debug.assert>
 103b809:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
 103b810:	00
 103b811:	48 8b 94 24 70 01 00 	mov    rdx,QWORD PTR [rsp+0x170]
 103b818:	00
 103b819:	48 8b 9c 24 78 01 00 	mov    rbx,QWORD PTR [rsp+0x178]
 103b820:	00
 103b821:	e8 fa 4a 00 00       	call   1040320 <array_list.AlignedManaged(u8,null).appendSlice>
 103b826:	66 89 c2             	mov    dx,ax
 103b829:	81 e2 ff ff 00 00    	and    edx,0xffff
 103b82f:	66 83 fa 00          	cmp    dx,0x0
 103b833:	0f 86 92 00 00 00    	jbe    103b8cb <lib.deunicodeCustomAlloc+0x7eb>
 103b839:	66 89 84 24 ea 04 00 	mov    WORD PTR [rsp+0x4ea],ax
 103b840:	00
 103b841:	66 8b 94 24 ea 04 00 	mov    dx,WORD PTR [rsp+0x4ea]
 103b848:	00
 103b849:	c5 fe 6f 84 24 40 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x140]
 103b850:	00 00
 103b852:	c5 fe 7f 84 24 48 03 	vmovdqu YMMWORD PTR [rsp+0x348],ymm0
 103b859:	00 00
 103b85b:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
 103b862:	00
 103b863:	48 89 84 24 68 03 00 	mov    QWORD PTR [rsp+0x368],rax
 103b86a:	00
 103b86b:	66 89 94 24 ec 04 00 	mov    WORD PTR [rsp+0x4ec],dx
 103b872:	00
 103b873:	c5 fe 6f 84 24 48 03 	vmovdqu ymm0,YMMWORD PTR [rsp+0x348]
 103b87a:	00 00
 103b87c:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b881:	48 8b 84 24 68 03 00 	mov    rax,QWORD PTR [rsp+0x368]
 103b888:	00
 103b889:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b88e:	e8 ad 42 00 00       	call   103fb40 <array_list.AlignedManaged(u8,null).deinit>
 103b893:	66 8b 84 24 ec 04 00 	mov    ax,WORD PTR [rsp+0x4ec]
 103b89a:	00
 103b89b:	66 89 84 24 80 03 00 	mov    WORD PTR [rsp+0x380],ax
 103b8a2:	00
 103b8a3:	e8 78 3c 00 00       	call   103f520 <builtin.returnError>
 103b8a8:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b8ad:	c5 fa 6f 84 24 70 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x370]
 103b8b4:	00 00
 103b8b6:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b8ba:	48 8b 94 24 80 03 00 	mov    rdx,QWORD PTR [rsp+0x380]
 103b8c1:	00
 103b8c2:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b8c6:	e9 40 04 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b8cb:	e9 7b 03 00 00       	jmp    103bc4b <lib.deunicodeCustomAlloc+0xb6b>
 103b8d0:	e9 00 00 00 00       	jmp    103b8d5 <lib.deunicodeCustomAlloc+0x7f5>
 103b8d5:	48 83 bc 24 18 03 00 	cmp    QWORD PTR [rsp+0x318],0x0
 103b8dc:	00 00
 103b8de:	0f 84 05 00 00 00    	je     103b8e9 <lib.deunicodeCustomAlloc+0x809>
 103b8e4:	e9 05 00 00 00       	jmp    103b8ee <lib.deunicodeCustomAlloc+0x80e>
 103b8e9:	e8 f2 44 00 00       	call   103fde0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103b8ee:	c5 fa 6f 84 24 18 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x318]
 103b8f5:	00 00
 103b8f7:	c5 fa 7f 84 24 88 03 	vmovdqu XMMWORD PTR [rsp+0x388],xmm0
 103b8fe:	00 00
 103b900:	c5 fa 6f 84 24 88 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x388]
 103b907:	00 00
 103b909:	c5 fa 7f 84 24 98 03 	vmovdqu XMMWORD PTR [rsp+0x398],xmm0
 103b910:	00 00
 103b912:	c5 fa 6f 84 24 88 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x388]
 103b919:	00 00
 103b91b:	c5 fa 7f 84 24 a8 03 	vmovdqu XMMWORD PTR [rsp+0x3a8],xmm0
 103b922:	00 00
 103b924:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
 103b92b:	00
 103b92c:	48 8b 94 24 88 03 00 	mov    rdx,QWORD PTR [rsp+0x388]
 103b933:	00
 103b934:	48 8b 9c 24 90 03 00 	mov    rbx,QWORD PTR [rsp+0x390]
 103b93b:	00
 103b93c:	e8 df 49 00 00       	call   1040320 <array_list.AlignedManaged(u8,null).appendSlice>
 103b941:	66 89 c2             	mov    dx,ax
 103b944:	81 e2 ff ff 00 00    	and    edx,0xffff
 103b94a:	66 83 fa 00          	cmp    dx,0x0
 103b94e:	0f 86 92 00 00 00    	jbe    103b9e6 <lib.deunicodeCustomAlloc+0x906>
 103b954:	66 89 84 24 ee 04 00 	mov    WORD PTR [rsp+0x4ee],ax
 103b95b:	00
 103b95c:	66 8b 94 24 ee 04 00 	mov    dx,WORD PTR [rsp+0x4ee]
 103b963:	00
 103b964:	c5 fe 6f 84 24 40 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x140]
 103b96b:	00 00
 103b96d:	c5 fe 7f 84 24 b8 03 	vmovdqu YMMWORD PTR [rsp+0x3b8],ymm0
 103b974:	00 00
 103b976:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
 103b97d:	00
 103b97e:	48 89 84 24 d8 03 00 	mov    QWORD PTR [rsp+0x3d8],rax
 103b985:	00
 103b986:	66 89 94 24 f0 04 00 	mov    WORD PTR [rsp+0x4f0],dx
 103b98d:	00
 103b98e:	c5 fe 6f 84 24 b8 03 	vmovdqu ymm0,YMMWORD PTR [rsp+0x3b8]
 103b995:	00 00
 103b997:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b99c:	48 8b 84 24 d8 03 00 	mov    rax,QWORD PTR [rsp+0x3d8]
 103b9a3:	00
 103b9a4:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b9a9:	e8 92 41 00 00       	call   103fb40 <array_list.AlignedManaged(u8,null).deinit>
 103b9ae:	66 8b 84 24 f0 04 00 	mov    ax,WORD PTR [rsp+0x4f0]
 103b9b5:	00
 103b9b6:	66 89 84 24 f0 03 00 	mov    WORD PTR [rsp+0x3f0],ax
 103b9bd:	00
 103b9be:	e8 5d 3b 00 00       	call   103f520 <builtin.returnError>
 103b9c3:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b9c8:	c5 fa 6f 84 24 e0 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x3e0]
 103b9cf:	00 00
 103b9d1:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b9d5:	48 8b 94 24 f0 03 00 	mov    rdx,QWORD PTR [rsp+0x3f0]
 103b9dc:	00
 103b9dd:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b9e1:	e9 25 03 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103b9e6:	48 8b 84 24 a0 03 00 	mov    rax,QWORD PTR [rsp+0x3a0]
 103b9ed:	00
 103b9ee:	48 83 f8 01          	cmp    rax,0x1
 103b9f2:	0f 86 b3 00 00 00    	jbe    103baab <lib.deunicodeCustomAlloc+0x9cb>
 103b9f8:	48 8b 84 24 a0 03 00 	mov    rax,QWORD PTR [rsp+0x3a0]
 103b9ff:	00
 103ba00:	48 83 e8 01          	sub    rax,0x1
 103ba04:	48 89 84 24 f8 03 00 	mov    QWORD PTR [rsp+0x3f8],rax
 103ba0b:	00
 103ba0c:	0f 92 84 24 00 04 00 	setb   BYTE PTR [rsp+0x400]
 103ba13:	00
 103ba14:	8a 94 24 00 04 00 00 	mov    dl,BYTE PTR [rsp+0x400]
 103ba1b:	48 89 84 24 08 04 00 	mov    QWORD PTR [rsp+0x408],rax
 103ba22:	00
 103ba23:	0f 92 84 24 10 04 00 	setb   BYTE PTR [rsp+0x410]
 103ba2a:	00
 103ba2b:	80 fa 01             	cmp    dl,0x1
 103ba2e:	0f 85 05 00 00 00    	jne    103ba39 <lib.deunicodeCustomAlloc+0x959>
 103ba34:	e8 17 38 00 00       	call   103f250 <debug.FullPanic((function 'defaultPanic')).integerOverflow>
 103ba39:	48 8b 84 24 08 04 00 	mov    rax,QWORD PTR [rsp+0x408]
 103ba40:	00
 103ba41:	e9 00 00 00 00       	jmp    103ba46 <lib.deunicodeCustomAlloc+0x966>
 103ba46:	c5 fa 6f 84 24 98 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x398]
 103ba4d:	00 00
 103ba4f:	c5 fa 7f 84 24 18 04 	vmovdqu XMMWORD PTR [rsp+0x418],xmm0
 103ba56:	00 00
 103ba58:	48 8b 94 24 20 04 00 	mov    rdx,QWORD PTR [rsp+0x420]
 103ba5f:	00
 103ba60:	48 39 d0             	cmp    rax,rdx
 103ba63:	0f 83 05 00 00 00    	jae    103ba6e <lib.deunicodeCustomAlloc+0x98e>
 103ba69:	e9 25 00 00 00       	jmp    103ba93 <lib.deunicodeCustomAlloc+0x9b3>
 103ba6e:	48 89 84 24 28 04 00 	mov    QWORD PTR [rsp+0x428],rax
 103ba75:	00
 103ba76:	48 89 94 24 30 04 00 	mov    QWORD PTR [rsp+0x430],rdx
 103ba7d:	00
 103ba7e:	48 8b 84 24 28 04 00 	mov    rax,QWORD PTR [rsp+0x428]
 103ba85:	00
 103ba86:	48 8b 94 24 30 04 00 	mov    rdx,QWORD PTR [rsp+0x430]
 103ba8d:	00
 103ba8e:	e8 2d 3d 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103ba93:	48 8b 94 24 18 04 00 	mov    rdx,QWORD PTR [rsp+0x418]
 103ba9a:	00
 103ba9b:	48 8d 14 02          	lea    rdx,[rdx+rax*1]
 103ba9f:	8a 02                	mov    al,BYTE PTR [rdx]
 103baa1:	3c 20                	cmp    al,0x20
 103baa3:	0f 94 c0             	sete   al
 103baa6:	e9 07 00 00 00       	jmp    103bab2 <lib.deunicodeCustomAlloc+0x9d2>
 103baab:	31 c0                	xor    eax,eax
 103baad:	e9 00 00 00 00       	jmp    103bab2 <lib.deunicodeCustomAlloc+0x9d2>
 103bab2:	88 84 24 f6 04 00 00 	mov    BYTE PTR [rsp+0x4f6],al
 103bab9:	34 01                	xor    al,0x1
 103babb:	a8 01                	test   al,0x1
 103babd:	0f 84 05 00 00 00    	je     103bac8 <lib.deunicodeCustomAlloc+0x9e8>
 103bac3:	e9 83 01 00 00       	jmp    103bc4b <lib.deunicodeCustomAlloc+0xb6b>
 103bac8:	e9 00 00 00 00       	jmp    103bacd <lib.deunicodeCustomAlloc+0x9ed>
 103bacd:	c6 84 24 f7 04 00 00 	mov    BYTE PTR [rsp+0x4f7],0x1
 103bad4:	01
 103bad5:	48 8b 84 24 d8 04 00 	mov    rax,QWORD PTR [rsp+0x4d8]
 103badc:	00
 103badd:	48 89 84 24 38 04 00 	mov    QWORD PTR [rsp+0x438],rax
 103bae4:	00
 103bae5:	80 bc 24 3c 04 00 00 	cmp    BYTE PTR [rsp+0x43c],0x0
 103baec:	00
 103baed:	0f 84 2c 01 00 00    	je     103bc1f <lib.deunicodeCustomAlloc+0xb3f>
 103baf3:	48 8b 84 24 d8 04 00 	mov    rax,QWORD PTR [rsp+0x4d8]
 103bafa:	00
 103bafb:	48 89 84 24 40 04 00 	mov    QWORD PTR [rsp+0x440],rax
 103bb02:	00
 103bb03:	80 bc 24 44 04 00 00 	cmp    BYTE PTR [rsp+0x444],0x0
 103bb0a:	00
 103bb0b:	0f 84 05 00 00 00    	je     103bb16 <lib.deunicodeCustomAlloc+0xa36>
 103bb11:	e9 05 00 00 00       	jmp    103bb1b <lib.deunicodeCustomAlloc+0xa3b>
 103bb16:	e8 c5 42 00 00       	call   103fde0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103bb1b:	48 89 84 24 48 04 00 	mov    QWORD PTR [rsp+0x448],rax
 103bb22:	00
 103bb23:	8b 94 24 48 04 00 00 	mov    edx,DWORD PTR [rsp+0x448]
 103bb2a:	89 94 24 e4 04 00 00 	mov    DWORD PTR [rsp+0x4e4],edx
 103bb31:	8b 84 24 e4 04 00 00 	mov    eax,DWORD PTR [rsp+0x4e4]
 103bb38:	e8 f3 42 00 00       	call   103fe30 <lib.getReplacement>
 103bb3d:	48 89 84 24 50 04 00 	mov    QWORD PTR [rsp+0x450],rax
 103bb44:	00
 103bb45:	48 89 94 24 58 04 00 	mov    QWORD PTR [rsp+0x458],rdx
 103bb4c:	00
 103bb4d:	48 89 84 24 60 04 00 	mov    QWORD PTR [rsp+0x460],rax
 103bb54:	00
 103bb55:	48 89 94 24 68 04 00 	mov    QWORD PTR [rsp+0x468],rdx
 103bb5c:	00
 103bb5d:	c6 84 24 f3 04 00 00 	mov    BYTE PTR [rsp+0x4f3],0x1
 103bb64:	01
 103bb65:	48 89 84 24 f0 02 00 	mov    QWORD PTR [rsp+0x2f0],rax
 103bb6c:	00
 103bb6d:	48 89 94 24 f8 02 00 	mov    QWORD PTR [rsp+0x2f8],rdx
 103bb74:	00
 103bb75:	48 89 84 24 70 04 00 	mov    QWORD PTR [rsp+0x470],rax
 103bb7c:	00
 103bb7d:	48 89 94 24 78 04 00 	mov    QWORD PTR [rsp+0x478],rdx
 103bb84:	00
 103bb85:	48 83 bc 24 70 04 00 	cmp    QWORD PTR [rsp+0x470],0x0
 103bb8c:	00 00
 103bb8e:	0f 85 0d 00 00 00    	jne    103bba1 <lib.deunicodeCustomAlloc+0xac1>
 103bb94:	c6 84 24 f7 04 00 00 	mov    BYTE PTR [rsp+0x4f7],0x0
 103bb9b:	00
 103bb9c:	e9 79 00 00 00       	jmp    103bc1a <lib.deunicodeCustomAlloc+0xb3a>
 103bba1:	48 83 bc 24 50 04 00 	cmp    QWORD PTR [rsp+0x450],0x0
 103bba8:	00 00
 103bbaa:	0f 84 05 00 00 00    	je     103bbb5 <lib.deunicodeCustomAlloc+0xad5>
 103bbb0:	e9 05 00 00 00       	jmp    103bbba <lib.deunicodeCustomAlloc+0xada>
 103bbb5:	e8 26 42 00 00       	call   103fde0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103bbba:	c5 fa 6f 84 24 50 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x450]
 103bbc1:	00 00
 103bbc3:	c5 fa 7f 84 24 80 04 	vmovdqu XMMWORD PTR [rsp+0x480],xmm0
 103bbca:	00 00
 103bbcc:	48 8b 84 24 88 04 00 	mov    rax,QWORD PTR [rsp+0x488]
 103bbd3:	00
 103bbd4:	48 83 f8 00          	cmp    rax,0x0
 103bbd8:	0f 86 05 00 00 00    	jbe    103bbe3 <lib.deunicodeCustomAlloc+0xb03>
 103bbde:	e9 17 00 00 00       	jmp    103bbfa <lib.deunicodeCustomAlloc+0xb1a>
 103bbe3:	48 89 84 24 90 04 00 	mov    QWORD PTR [rsp+0x490],rax
 103bbea:	00
 103bbeb:	31 c0                	xor    eax,eax
 103bbed:	48 8b 94 24 90 04 00 	mov    rdx,QWORD PTR [rsp+0x490]
 103bbf4:	00
 103bbf5:	e8 c6 3b 00 00       	call   103f7c0 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103bbfa:	48 8b 84 24 80 04 00 	mov    rax,QWORD PTR [rsp+0x480]
 103bc01:	00
 103bc02:	31 d2                	xor    edx,edx
 103bc04:	48 8d 04 10          	lea    rax,[rax+rdx*1]
 103bc08:	8a 10                	mov    dl,BYTE PTR [rax]
 103bc0a:	80 fa 20             	cmp    dl,0x20
 103bc0d:	0f 94 84 24 f7 04 00 	sete   BYTE PTR [rsp+0x4f7]
 103bc14:	00
 103bc15:	e9 00 00 00 00       	jmp    103bc1a <lib.deunicodeCustomAlloc+0xb3a>
 103bc1a:	e9 05 00 00 00       	jmp    103bc24 <lib.deunicodeCustomAlloc+0xb44>
 103bc1f:	e9 00 00 00 00       	jmp    103bc24 <lib.deunicodeCustomAlloc+0xb44>
 103bc24:	8a 84 24 f7 04 00 00 	mov    al,BYTE PTR [rsp+0x4f7]
 103bc2b:	a8 01                	test   al,0x1
 103bc2d:	0f 84 12 00 00 00    	je     103bc45 <lib.deunicodeCustomAlloc+0xb65>
 103bc33:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
 103bc3a:	00
 103bc3b:	e8 d0 47 00 00       	call   1040410 <array_list.AlignedManaged(u8,null).pop>
 103bc40:	e9 05 00 00 00       	jmp    103bc4a <lib.deunicodeCustomAlloc+0xb6a>
 103bc45:	e9 00 00 00 00       	jmp    103bc4a <lib.deunicodeCustomAlloc+0xb6a>
 103bc4a:	90                   	nop
 103bc4b:	e9 05 00 00 00       	jmp    103bc55 <lib.deunicodeCustomAlloc+0xb75>
 103bc50:	e9 05 00 00 00       	jmp    103bc5a <lib.deunicodeCustomAlloc+0xb7a>
 103bc55:	e9 9e fa ff ff       	jmp    103b6f8 <lib.deunicodeCustomAlloc+0x618>
 103bc5a:	48 8d 84 24 98 04 00 	lea    rax,[rsp+0x498]
 103bc61:	00
 103bc62:	48 8d 94 24 40 01 00 	lea    rdx,[rsp+0x140]
 103bc69:	00
 103bc6a:	e8 51 4a 00 00       	call   10406c0 <array_list.AlignedManaged(u8,null).toOwnedSlice>
 103bc6f:	c5 fe 6f 84 24 40 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x140]
 103bc76:	00 00
 103bc78:	c5 fe 7f 84 24 b0 04 	vmovdqu YMMWORD PTR [rsp+0x4b0],ymm0
 103bc7f:	00 00
 103bc81:	48 8b 84 24 60 01 00 	mov    rax,QWORD PTR [rsp+0x160]
 103bc88:	00
 103bc89:	48 89 84 24 d0 04 00 	mov    QWORD PTR [rsp+0x4d0],rax
 103bc90:	00
 103bc91:	c5 fe 6f 84 24 b0 04 	vmovdqu ymm0,YMMWORD PTR [rsp+0x4b0]
 103bc98:	00 00
 103bc9a:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103bc9f:	48 8b 84 24 d0 04 00 	mov    rax,QWORD PTR [rsp+0x4d0]
 103bca6:	00
 103bca7:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103bcac:	e8 8f 3e 00 00       	call   103fb40 <array_list.AlignedManaged(u8,null).deinit>
 103bcb1:	66 83 bc 24 a8 04 00 	cmp    WORD PTR [rsp+0x4a8],0x0
 103bcb8:	00 00
 103bcba:	0f 85 23 00 00 00    	jne    103bce3 <lib.deunicodeCustomAlloc+0xc03>
 103bcc0:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103bcc5:	c5 fa 6f 84 24 98 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x498]
 103bccc:	00 00
 103bcce:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103bcd2:	48 8b 94 24 a8 04 00 	mov    rdx,QWORD PTR [rsp+0x4a8]
 103bcd9:	00
 103bcda:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103bcde:	e9 28 00 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103bce3:	e8 38 38 00 00       	call   103f520 <builtin.returnError>
 103bce8:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103bced:	c5 fa 6f 84 24 98 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x498]
 103bcf4:	00 00
 103bcf6:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103bcfa:	48 8b 94 24 a8 04 00 	mov    rdx,QWORD PTR [rsp+0x4a8]
 103bd01:	00
 103bd02:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103bd06:	e9 00 00 00 00       	jmp    103bd0b <lib.deunicodeCustomAlloc+0xc2b>
 103bd0b:	48 89 ec             	mov    rsp,rbp
 103bd0e:	5d                   	pop    rbp
 103bd0f:	c3                   	ret
	...
