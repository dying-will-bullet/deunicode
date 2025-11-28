./.zig-cache/o/edf1dc99f128467ee61111bf63a23da7/test:     file format elf64-x86-64

Disassembly of section .text:

000000000103b0e0 <lib.deunicodeCustomAlloc>:
 103b0e0:	55                   	push   rbp
 103b0e1:	48 89 e5             	mov    rbp,rsp
 103b0e4:	48 81 ec f0 04 00 00 	sub    rsp,0x4f0
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
 103b12a:	48 c7 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],0x0
 103b131:	00 00 00 00 00
 103b136:	48 c7 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],0x0
 103b13d:	00 00 00 00 00
 103b142:	48 89 d8             	mov    rax,rbx
 103b145:	48 8b bc 24 a0 00 00 	mov    rdi,QWORD PTR [rsp+0xa0]
 103b14c:	00
 103b14d:	49 89 f8             	mov    r8,rdi
 103b150:	49 89 c2             	mov    r10,rax
 103b153:	4d 39 d0             	cmp    r8,r10
 103b156:	0f 83 81 00 00 00    	jae    103b1dd <lib.deunicodeCustomAlloc+0xfd>
 103b15c:	49 89 d0             	mov    r8,rdx
 103b15f:	45 0f b6 14 38       	movzx  r10d,BYTE PTR [r8+rdi*1]
 103b164:	44 88 94 24 e2 04 00 	mov    BYTE PTR [rsp+0x4e2],r10b
 103b16b:	00
 103b16c:	41 80 fa 7f          	cmp    r10b,0x7f
 103b170:	0f 83 5d 00 00 00    	jae    103b1d3 <lib.deunicodeCustomAlloc+0xf3>
 103b176:	4c 8b 84 24 98 00 00 	mov    r8,QWORD PTR [rsp+0x98]
 103b17d:	00
 103b17e:	49 83 c0 01          	add    r8,0x1
 103b182:	4c 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],r8
 103b189:	00
 103b18a:	0f 92 84 24 b0 00 00 	setb   BYTE PTR [rsp+0xb0]
 103b191:	00
 103b192:	44 8a 94 24 b0 00 00 	mov    r10b,BYTE PTR [rsp+0xb0]
 103b199:	00
 103b19a:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
 103b1a1:	00
 103b1a2:	0f 92 84 24 c0 00 00 	setb   BYTE PTR [rsp+0xc0]
 103b1a9:	00
 103b1aa:	41 80 fa 01          	cmp    r10b,0x1
 103b1ae:	0f 85 05 00 00 00    	jne    103b1b9 <lib.deunicodeCustomAlloc+0xd9>
 103b1b4:	e8 57 40 00 00       	call   103f210 <debug.FullPanic((function 'defaultPanic')).integerOverflow>
 103b1b9:	4c 8b 84 24 b8 00 00 	mov    r8,QWORD PTR [rsp+0xb8]
 103b1c0:	00
 103b1c1:	e9 00 00 00 00       	jmp    103b1c6 <lib.deunicodeCustomAlloc+0xe6>
 103b1c6:	4c 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],r8
 103b1cd:	00
 103b1ce:	e9 0f 00 00 00       	jmp    103b1e2 <lib.deunicodeCustomAlloc+0x102>
 103b1d3:	e9 00 00 00 00       	jmp    103b1d8 <lib.deunicodeCustomAlloc+0xf8>
 103b1d8:	e9 16 00 00 00       	jmp    103b1f3 <lib.deunicodeCustomAlloc+0x113>
 103b1dd:	e9 11 00 00 00       	jmp    103b1f3 <lib.deunicodeCustomAlloc+0x113>
 103b1e2:	48 83 c7 01          	add    rdi,0x1
 103b1e6:	48 89 bc 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rdi
 103b1ed:	00
 103b1ee:	e9 52 ff ff ff       	jmp    103b145 <lib.deunicodeCustomAlloc+0x65>
 103b1f3:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
 103b1fa:	00
 103b1fb:	48 8b bc 24 90 00 00 	mov    rdi,QWORD PTR [rsp+0x90]
 103b202:	00
 103b203:	48 39 f8             	cmp    rax,rdi
 103b206:	0f 82 d0 00 00 00    	jb     103b2dc <lib.deunicodeCustomAlloc+0x1fc>
 103b20c:	c5 fa 6f 44 24 78    	vmovdqu xmm0,XMMWORD PTR [rsp+0x78]
 103b212:	c5 fa 7f 84 24 c8 00 	vmovdqu XMMWORD PTR [rsp+0xc8],xmm0
 103b219:	00 00
 103b21b:	48 89 94 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rdx
 103b222:	00
 103b223:	48 89 9c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rbx
 103b22a:	00
 103b22b:	c5 fa 6f 84 24 c8 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0xc8]
 103b232:	00 00
 103b234:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b239:	48 8d 84 24 e8 00 00 	lea    rax,[rsp+0xe8]
 103b240:	00
 103b241:	48 8b 94 24 d8 00 00 	mov    rdx,QWORD PTR [rsp+0xd8]
 103b248:	00
 103b249:	48 8b 9c 24 e0 00 00 	mov    rbx,QWORD PTR [rsp+0xe0]
 103b250:	00
 103b251:	e8 0a 40 00 00       	call   103f260 <mem.Allocator.dupe__anon_2054>
 103b256:	66 83 bc 24 f8 00 00 	cmp    WORD PTR [rsp+0xf8],0x0
 103b25d:	00 00
 103b25f:	0f 86 38 00 00 00    	jbe    103b29d <lib.deunicodeCustomAlloc+0x1bd>
 103b265:	66 8b 84 24 f8 00 00 	mov    ax,WORD PTR [rsp+0xf8]
 103b26c:	00
 103b26d:	66 89 84 24 10 01 00 	mov    WORD PTR [rsp+0x110],ax
 103b274:	00
 103b275:	e8 66 42 00 00       	call   103f4e0 <builtin.returnError>
 103b27a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b27f:	c5 fa 6f 84 24 00 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x100]
 103b286:	00 00
 103b288:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b28c:	48 8b 94 24 10 01 00 	mov    rdx,QWORD PTR [rsp+0x110]
 103b293:	00
 103b294:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b298:	e9 3e 0a 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b29d:	c5 fa 6f 84 24 e8 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0xe8]
 103b2a4:	00 00
 103b2a6:	c5 fa 7f 84 24 18 01 	vmovdqu XMMWORD PTR [rsp+0x118],xmm0
 103b2ad:	00 00
 103b2af:	66 c7 84 24 28 01 00 	mov    WORD PTR [rsp+0x128],0x0
 103b2b6:	00 00 00
 103b2b9:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b2be:	c5 fa 6f 84 24 18 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x118]
 103b2c5:	00 00
 103b2c7:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b2cb:	48 8b 94 24 28 01 00 	mov    rdx,QWORD PTR [rsp+0x128]
 103b2d2:	00
 103b2d3:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b2d7:	e9 ff 09 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b2dc:	e9 00 00 00 00       	jmp    103b2e1 <lib.deunicodeCustomAlloc+0x201>
 103b2e1:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
 103b2e8:	00
 103b2e9:	48 83 c8 0f          	or     rax,0xf
 103b2ed:	48 89 84 24 58 01 00 	mov    QWORD PTR [rsp+0x158],rax
 103b2f4:	00
 103b2f5:	48 89 8c 24 60 01 00 	mov    QWORD PTR [rsp+0x160],rcx
 103b2fc:	00
 103b2fd:	48 89 b4 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rsi
 103b304:	00
 103b305:	c5 fa 6f 45 10       	vmovdqu xmm0,XMMWORD PTR [rbp+0x10]
 103b30a:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b30f:	48 8d 84 24 70 01 00 	lea    rax,[rsp+0x170]
 103b316:	00
 103b317:	48 8b 94 24 58 01 00 	mov    rdx,QWORD PTR [rsp+0x158]
 103b31e:	00
 103b31f:	e8 6c 42 00 00       	call   103f590 <array_list.AlignedManaged(u8,null).initCapacity>
 103b324:	66 83 bc 24 98 01 00 	cmp    WORD PTR [rsp+0x198],0x0
 103b32b:	00 00
 103b32d:	0f 86 38 00 00 00    	jbe    103b36b <lib.deunicodeCustomAlloc+0x28b>
 103b333:	66 8b 84 24 98 01 00 	mov    ax,WORD PTR [rsp+0x198]
 103b33a:	00
 103b33b:	66 89 84 24 b0 01 00 	mov    WORD PTR [rsp+0x1b0],ax
 103b342:	00
 103b343:	e8 98 41 00 00       	call   103f4e0 <builtin.returnError>
 103b348:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b34d:	c5 fa 6f 84 24 a0 01 	vmovdqu xmm0,XMMWORD PTR [rsp+0x1a0]
 103b354:	00 00
 103b356:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b35a:	48 8b 94 24 b0 01 00 	mov    rdx,QWORD PTR [rsp+0x1b0]
 103b361:	00
 103b362:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b366:	e9 70 09 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b36b:	c5 fe 6f 84 24 70 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x170]
 103b372:	00 00
 103b374:	c5 fe 7f 84 24 30 01 	vmovdqu YMMWORD PTR [rsp+0x130],ymm0
 103b37b:	00 00
 103b37d:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
 103b384:	00
 103b385:	48 89 84 24 50 01 00 	mov    QWORD PTR [rsp+0x150],rax
 103b38c:	00
 103b38d:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
 103b394:	00
 103b395:	c5 fa 6f 84 24 88 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0x88]
 103b39c:	00 00
 103b39e:	c5 fa 7f 84 24 b8 01 	vmovdqu XMMWORD PTR [rsp+0x1b8],xmm0
 103b3a5:	00 00
 103b3a7:	48 8b 94 24 b8 01 00 	mov    rdx,QWORD PTR [rsp+0x1b8]
 103b3ae:	00
 103b3af:	48 8d 1a             	lea    rbx,[rdx]
 103b3b2:	48 83 f8 00          	cmp    rax,0x0
 103b3b6:	0f 82 05 00 00 00    	jb     103b3c1 <lib.deunicodeCustomAlloc+0x2e1>
 103b3bc:	e9 17 00 00 00       	jmp    103b3d8 <lib.deunicodeCustomAlloc+0x2f8>
 103b3c1:	48 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rax
 103b3c8:	00
 103b3c9:	31 c0                	xor    eax,eax
 103b3cb:	48 8b 94 24 c8 01 00 	mov    rdx,QWORD PTR [rsp+0x1c8]
 103b3d2:	00
 103b3d3:	e8 48 43 00 00       	call   103f720 <debug.FullPanic((function 'defaultPanic')).startGreaterThanEnd>
 103b3d8:	48 89 c2             	mov    rdx,rax
 103b3db:	48 83 ea 00          	sub    rdx,0x0
 103b3df:	48 3b 84 24 c0 01 00 	cmp    rax,QWORD PTR [rsp+0x1c0]
 103b3e6:	00
 103b3e7:	0f 87 05 00 00 00    	ja     103b3f2 <lib.deunicodeCustomAlloc+0x312>
 103b3ed:	e9 1d 00 00 00       	jmp    103b40f <lib.deunicodeCustomAlloc+0x32f>
 103b3f2:	48 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rax
 103b3f9:	00
 103b3fa:	48 8b 84 24 c8 01 00 	mov    rax,QWORD PTR [rsp+0x1c8]
 103b401:	00
 103b402:	48 8b 94 24 c0 01 00 	mov    rdx,QWORD PTR [rsp+0x1c0]
 103b409:	00
 103b40a:	e8 71 43 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b40f:	48 83 f8 00          	cmp    rax,0x0
 103b413:	0f 82 05 00 00 00    	jb     103b41e <lib.deunicodeCustomAlloc+0x33e>
 103b419:	e9 17 00 00 00       	jmp    103b435 <lib.deunicodeCustomAlloc+0x355>
 103b41e:	48 89 84 24 c8 01 00 	mov    QWORD PTR [rsp+0x1c8],rax
 103b425:	00
 103b426:	31 c0                	xor    eax,eax
 103b428:	48 8b 94 24 c8 01 00 	mov    rdx,QWORD PTR [rsp+0x1c8]
 103b42f:	00
 103b430:	e8 4b 43 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b435:	48 89 9c 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],rbx
 103b43c:	00
 103b43d:	48 89 94 24 d8 01 00 	mov    QWORD PTR [rsp+0x1d8],rdx
 103b444:	00
 103b445:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
 103b44c:	00
 103b44d:	c5 fa 6f 84 24 88 00 	vmovdqu xmm0,XMMWORD PTR [rsp+0x88]
 103b454:	00 00
 103b456:	c5 fa 7f 84 24 e0 01 	vmovdqu XMMWORD PTR [rsp+0x1e0],xmm0
 103b45d:	00 00
 103b45f:	48 8b 8c 24 e0 01 00 	mov    rcx,QWORD PTR [rsp+0x1e0]
 103b466:	00
 103b467:	48 8d 34 01          	lea    rsi,[rcx+rax*1]
 103b46b:	48 8b 8c 24 e8 01 00 	mov    rcx,QWORD PTR [rsp+0x1e8]
 103b472:	00
 103b473:	48 39 c1             	cmp    rcx,rax
 103b476:	0f 82 05 00 00 00    	jb     103b481 <lib.deunicodeCustomAlloc+0x3a1>
 103b47c:	e9 25 00 00 00       	jmp    103b4a6 <lib.deunicodeCustomAlloc+0x3c6>
 103b481:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
 103b488:	00
 103b489:	48 89 8c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],rcx
 103b490:	00
 103b491:	48 8b 84 24 f0 01 00 	mov    rax,QWORD PTR [rsp+0x1f0]
 103b498:	00
 103b499:	48 8b 94 24 f8 01 00 	mov    rdx,QWORD PTR [rsp+0x1f8]
 103b4a0:	00
 103b4a1:	e8 7a 42 00 00       	call   103f720 <debug.FullPanic((function 'defaultPanic')).startGreaterThanEnd>
 103b4a6:	48 89 cf             	mov    rdi,rcx
 103b4a9:	48 29 c7             	sub    rdi,rax
 103b4ac:	48 3b 8c 24 e8 01 00 	cmp    rcx,QWORD PTR [rsp+0x1e8]
 103b4b3:	00
 103b4b4:	0f 87 05 00 00 00    	ja     103b4bf <lib.deunicodeCustomAlloc+0x3df>
 103b4ba:	e9 1d 00 00 00       	jmp    103b4dc <lib.deunicodeCustomAlloc+0x3fc>
 103b4bf:	48 89 8c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],rcx
 103b4c6:	00
 103b4c7:	48 8b 84 24 f8 01 00 	mov    rax,QWORD PTR [rsp+0x1f8]
 103b4ce:	00
 103b4cf:	48 8b 94 24 e8 01 00 	mov    rdx,QWORD PTR [rsp+0x1e8]
 103b4d6:	00
 103b4d7:	e8 a4 42 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b4dc:	48 39 c1             	cmp    rcx,rax
 103b4df:	0f 82 05 00 00 00    	jb     103b4ea <lib.deunicodeCustomAlloc+0x40a>
 103b4e5:	e9 25 00 00 00       	jmp    103b50f <lib.deunicodeCustomAlloc+0x42f>
 103b4ea:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
 103b4f1:	00
 103b4f2:	48 89 8c 24 f8 01 00 	mov    QWORD PTR [rsp+0x1f8],rcx
 103b4f9:	00
 103b4fa:	48 8b 84 24 f0 01 00 	mov    rax,QWORD PTR [rsp+0x1f0]
 103b501:	00
 103b502:	48 8b 94 24 f8 01 00 	mov    rdx,QWORD PTR [rsp+0x1f8]
 103b509:	00
 103b50a:	e8 71 42 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103b50f:	48 89 b4 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rsi
 103b516:	00
 103b517:	48 89 bc 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rdi
 103b51e:	00
 103b51f:	48 89 9c 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rbx
 103b526:	00
 103b527:	48 89 94 24 18 02 00 	mov    QWORD PTR [rsp+0x218],rdx
 103b52e:	00
 103b52f:	48 89 b4 24 20 02 00 	mov    QWORD PTR [rsp+0x220],rsi
 103b536:	00
 103b537:	48 89 bc 24 28 02 00 	mov    QWORD PTR [rsp+0x228],rdi
 103b53e:	00
 103b53f:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
 103b546:	00
 103b547:	48 8b 94 24 10 02 00 	mov    rdx,QWORD PTR [rsp+0x210]
 103b54e:	00
 103b54f:	48 8b 9c 24 18 02 00 	mov    rbx,QWORD PTR [rsp+0x218]
 103b556:	00
 103b557:	e8 84 42 00 00       	call   103f7e0 <array_list.AlignedManaged(u8,null).appendSliceAssumeCapacity>
 103b55c:	48 8d 84 24 48 02 00 	lea    rax,[rsp+0x248]
 103b563:	00
 103b564:	48 8b 94 24 20 02 00 	mov    rdx,QWORD PTR [rsp+0x220]
 103b56b:	00
 103b56c:	48 8b 9c 24 28 02 00 	mov    rbx,QWORD PTR [rsp+0x228]
 103b573:	00
 103b574:	e8 87 fa ff ff       	call   103b000 <unicode.Utf8View.init>
 103b579:	c5 fa 6f 84 24 48 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x248]
 103b580:	00 00
 103b582:	c5 fa 7f 84 24 60 02 	vmovdqu XMMWORD PTR [rsp+0x260],xmm0
 103b589:	00 00
 103b58b:	48 8b 84 24 58 02 00 	mov    rax,QWORD PTR [rsp+0x258]
 103b592:	00
 103b593:	48 89 84 24 70 02 00 	mov    QWORD PTR [rsp+0x270],rax
 103b59a:	00
 103b59b:	48 8d 84 24 60 02 00 	lea    rax,[rsp+0x260]
 103b5a2:	00
 103b5a3:	66 83 78 10 00       	cmp    WORD PTR [rax+0x10],0x0
 103b5a8:	0f 86 8a 00 00 00    	jbe    103b638 <lib.deunicodeCustomAlloc+0x558>
 103b5ae:	66 8b 84 24 70 02 00 	mov    ax,WORD PTR [rsp+0x270]
 103b5b5:	00
 103b5b6:	c5 fe 6f 84 24 30 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x130]
 103b5bd:	00 00
 103b5bf:	c5 fe 7f 84 24 78 02 	vmovdqu YMMWORD PTR [rsp+0x278],ymm0
 103b5c6:	00 00
 103b5c8:	48 8b 94 24 50 01 00 	mov    rdx,QWORD PTR [rsp+0x150]
 103b5cf:	00
 103b5d0:	48 89 94 24 98 02 00 	mov    QWORD PTR [rsp+0x298],rdx
 103b5d7:	00
 103b5d8:	66 89 84 24 d8 04 00 	mov    WORD PTR [rsp+0x4d8],ax
 103b5df:	00
 103b5e0:	c5 fe 6f 84 24 78 02 	vmovdqu ymm0,YMMWORD PTR [rsp+0x278]
 103b5e7:	00 00
 103b5e9:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b5ee:	48 8b 84 24 98 02 00 	mov    rax,QWORD PTR [rsp+0x298]
 103b5f5:	00
 103b5f6:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b5fb:	e8 00 45 00 00       	call   103fb00 <array_list.AlignedManaged(u8,null).deinit>
 103b600:	66 8b 84 24 d8 04 00 	mov    ax,WORD PTR [rsp+0x4d8]
 103b607:	00
 103b608:	66 89 84 24 b0 02 00 	mov    WORD PTR [rsp+0x2b0],ax
 103b60f:	00
 103b610:	e8 cb 3e 00 00       	call   103f4e0 <builtin.returnError>
 103b615:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b61a:	c5 fa 6f 84 24 a0 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2a0]
 103b621:	00 00
 103b623:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b627:	48 8b 94 24 b0 02 00 	mov    rdx,QWORD PTR [rsp+0x2b0]
 103b62e:	00
 103b62f:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b633:	e9 a3 06 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b638:	48 8d 84 24 60 02 00 	lea    rax,[rsp+0x260]
 103b63f:	00
 103b640:	48 83 c0 00          	add    rax,0x0
 103b644:	c5 fa 6f 00          	vmovdqu xmm0,XMMWORD PTR [rax]
 103b648:	c5 fa 7f 84 24 b8 02 	vmovdqu XMMWORD PTR [rsp+0x2b8],xmm0
 103b64f:	00 00
 103b651:	c5 fa 6f 84 24 b8 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2b8]
 103b658:	00 00
 103b65a:	c5 fa 7f 04 24       	vmovdqu XMMWORD PTR [rsp],xmm0
 103b65f:	48 8d 84 24 c8 02 00 	lea    rax,[rsp+0x2c8]
 103b666:	00
 103b667:	e8 94 45 00 00       	call   103fc00 <unicode.Utf8View.iterator>
 103b66c:	c5 fa 6f 84 24 c8 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2c8]
 103b673:	00 00
 103b675:	c5 fa 7f 84 24 30 02 	vmovdqu XMMWORD PTR [rsp+0x230],xmm0
 103b67c:	00 00
 103b67e:	48 8b 84 24 d8 02 00 	mov    rax,QWORD PTR [rsp+0x2d8]
 103b685:	00
 103b686:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
 103b68d:	00
 103b68e:	48 8d 84 24 30 02 00 	lea    rax,[rsp+0x230]
 103b695:	00
 103b696:	e8 e5 45 00 00       	call   103fc80 <unicode.Utf8Iterator.nextCodepoint>
 103b69b:	48 89 84 24 c8 04 00 	mov    QWORD PTR [rsp+0x4c8],rax
 103b6a2:	00
 103b6a3:	c6 84 24 e3 04 00 00 	mov    BYTE PTR [rsp+0x4e3],0x0
 103b6aa:	00
 103b6ab:	48 8d 84 24 e0 02 00 	lea    rax,[rsp+0x2e0]
 103b6b2:	00
 103b6b3:	48 89 84 24 f0 02 00 	mov    QWORD PTR [rsp+0x2f0],rax
 103b6ba:	00
 103b6bb:	48 8b bc 24 f0 02 00 	mov    rdi,QWORD PTR [rsp+0x2f0]
 103b6c2:	00
 103b6c3:	c6 84 24 e4 04 00 00 	mov    BYTE PTR [rsp+0x4e4],0xaa
 103b6ca:	aa
 103b6cb:	8a 84 24 e4 04 00 00 	mov    al,BYTE PTR [rsp+0x4e4]
 103b6d2:	48 c7 84 24 f8 02 00 	mov    QWORD PTR [rsp+0x2f8],0x10
 103b6d9:	00 10 00 00 00
 103b6de:	48 8b 8c 24 f8 02 00 	mov    rcx,QWORD PTR [rsp+0x2f8]
 103b6e5:	00
 103b6e6:	f3 aa                	rep stos BYTE PTR [rdi],al
 103b6e8:	48 8b 84 24 c8 04 00 	mov    rax,QWORD PTR [rsp+0x4c8]
 103b6ef:	00
 103b6f0:	48 89 84 24 00 03 00 	mov    QWORD PTR [rsp+0x300],rax
 103b6f7:	00
 103b6f8:	80 bc 24 04 03 00 00 	cmp    BYTE PTR [rsp+0x304],0x0
 103b6ff:	00
 103b700:	0f 84 1a 05 00 00    	je     103bc20 <lib.deunicodeCustomAlloc+0xb40>
 103b706:	8a 84 24 e3 04 00 00 	mov    al,BYTE PTR [rsp+0x4e3]
 103b70d:	a8 01                	test   al,0x1
 103b70f:	0f 84 17 00 00 00    	je     103b72c <lib.deunicodeCustomAlloc+0x64c>
 103b715:	c5 fa 6f 84 24 e0 02 	vmovdqu xmm0,XMMWORD PTR [rsp+0x2e0]
 103b71c:	00 00
 103b71e:	c5 fa 7f 84 24 08 03 	vmovdqu XMMWORD PTR [rsp+0x308],xmm0
 103b725:	00 00
 103b727:	e9 6f 00 00 00       	jmp    103b79b <lib.deunicodeCustomAlloc+0x6bb>
 103b72c:	48 8b 84 24 c8 04 00 	mov    rax,QWORD PTR [rsp+0x4c8]
 103b733:	00
 103b734:	48 89 84 24 18 03 00 	mov    QWORD PTR [rsp+0x318],rax
 103b73b:	00
 103b73c:	80 bc 24 1c 03 00 00 	cmp    BYTE PTR [rsp+0x31c],0x0
 103b743:	00
 103b744:	0f 84 05 00 00 00    	je     103b74f <lib.deunicodeCustomAlloc+0x66f>
 103b74a:	e9 05 00 00 00       	jmp    103b754 <lib.deunicodeCustomAlloc+0x674>
 103b74f:	e8 4c 46 00 00       	call   103fda0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103b754:	48 89 84 24 20 03 00 	mov    QWORD PTR [rsp+0x320],rax
 103b75b:	00
 103b75c:	8b 94 24 20 03 00 00 	mov    edx,DWORD PTR [rsp+0x320]
 103b763:	89 94 24 d0 04 00 00 	mov    DWORD PTR [rsp+0x4d0],edx
 103b76a:	8b 84 24 d0 04 00 00 	mov    eax,DWORD PTR [rsp+0x4d0]
 103b771:	e8 7a 46 00 00       	call   103fdf0 <lib.getReplacement>
 103b776:	48 89 84 24 08 03 00 	mov    QWORD PTR [rsp+0x308],rax
 103b77d:	00
 103b77e:	48 89 94 24 10 03 00 	mov    QWORD PTR [rsp+0x310],rdx
 103b785:	00
 103b786:	48 89 84 24 08 03 00 	mov    QWORD PTR [rsp+0x308],rax
 103b78d:	00
 103b78e:	48 89 94 24 10 03 00 	mov    QWORD PTR [rsp+0x310],rdx
 103b795:	00
 103b796:	e9 00 00 00 00       	jmp    103b79b <lib.deunicodeCustomAlloc+0x6bb>
 103b79b:	c5 fa 6f 84 24 08 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x308]
 103b7a2:	00 00
 103b7a4:	c5 fa 7f 84 24 28 03 	vmovdqu XMMWORD PTR [rsp+0x328],xmm0
 103b7ab:	00 00
 103b7ad:	48 8d 84 24 30 02 00 	lea    rax,[rsp+0x230]
 103b7b4:	00
 103b7b5:	e8 c6 44 00 00       	call   103fc80 <unicode.Utf8Iterator.nextCodepoint>
 103b7ba:	48 89 84 24 c8 04 00 	mov    QWORD PTR [rsp+0x4c8],rax
 103b7c1:	00
 103b7c2:	c6 84 24 e3 04 00 00 	mov    BYTE PTR [rsp+0x4e3],0x0
 103b7c9:	00
 103b7ca:	48 83 bc 24 08 03 00 	cmp    QWORD PTR [rsp+0x308],0x0
 103b7d1:	00 00
 103b7d3:	0f 85 c7 00 00 00    	jne    103b8a0 <lib.deunicodeCustomAlloc+0x7c0>
 103b7d9:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
 103b7e0:	00
 103b7e1:	48 8b 94 24 60 01 00 	mov    rdx,QWORD PTR [rsp+0x160]
 103b7e8:	00
 103b7e9:	48 8b 9c 24 68 01 00 	mov    rbx,QWORD PTR [rsp+0x168]
 103b7f0:	00
 103b7f1:	e8 ba 4a 00 00       	call   10402b0 <array_list.AlignedManaged(u8,null).appendSlice>
 103b7f6:	66 89 c2             	mov    dx,ax
 103b7f9:	81 e2 ff ff 00 00    	and    edx,0xffff
 103b7ff:	66 83 fa 00          	cmp    dx,0x0
 103b803:	0f 86 92 00 00 00    	jbe    103b89b <lib.deunicodeCustomAlloc+0x7bb>
 103b809:	66 89 84 24 da 04 00 	mov    WORD PTR [rsp+0x4da],ax
 103b810:	00
 103b811:	66 8b 94 24 da 04 00 	mov    dx,WORD PTR [rsp+0x4da]
 103b818:	00
 103b819:	c5 fe 6f 84 24 30 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x130]
 103b820:	00 00
 103b822:	c5 fe 7f 84 24 38 03 	vmovdqu YMMWORD PTR [rsp+0x338],ymm0
 103b829:	00 00
 103b82b:	48 8b 84 24 50 01 00 	mov    rax,QWORD PTR [rsp+0x150]
 103b832:	00
 103b833:	48 89 84 24 58 03 00 	mov    QWORD PTR [rsp+0x358],rax
 103b83a:	00
 103b83b:	66 89 94 24 dc 04 00 	mov    WORD PTR [rsp+0x4dc],dx
 103b842:	00
 103b843:	c5 fe 6f 84 24 38 03 	vmovdqu ymm0,YMMWORD PTR [rsp+0x338]
 103b84a:	00 00
 103b84c:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b851:	48 8b 84 24 58 03 00 	mov    rax,QWORD PTR [rsp+0x358]
 103b858:	00
 103b859:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b85e:	e8 9d 42 00 00       	call   103fb00 <array_list.AlignedManaged(u8,null).deinit>
 103b863:	66 8b 84 24 dc 04 00 	mov    ax,WORD PTR [rsp+0x4dc]
 103b86a:	00
 103b86b:	66 89 84 24 70 03 00 	mov    WORD PTR [rsp+0x370],ax
 103b872:	00
 103b873:	e8 68 3c 00 00       	call   103f4e0 <builtin.returnError>
 103b878:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b87d:	c5 fa 6f 84 24 60 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x360]
 103b884:	00 00
 103b886:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b88a:	48 8b 94 24 70 03 00 	mov    rdx,QWORD PTR [rsp+0x370]
 103b891:	00
 103b892:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b896:	e9 40 04 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b89b:	e9 7b 03 00 00       	jmp    103bc1b <lib.deunicodeCustomAlloc+0xb3b>
 103b8a0:	e9 00 00 00 00       	jmp    103b8a5 <lib.deunicodeCustomAlloc+0x7c5>
 103b8a5:	48 83 bc 24 08 03 00 	cmp    QWORD PTR [rsp+0x308],0x0
 103b8ac:	00 00
 103b8ae:	0f 84 05 00 00 00    	je     103b8b9 <lib.deunicodeCustomAlloc+0x7d9>
 103b8b4:	e9 05 00 00 00       	jmp    103b8be <lib.deunicodeCustomAlloc+0x7de>
 103b8b9:	e8 e2 44 00 00       	call   103fda0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103b8be:	c5 fa 6f 84 24 08 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x308]
 103b8c5:	00 00
 103b8c7:	c5 fa 7f 84 24 78 03 	vmovdqu XMMWORD PTR [rsp+0x378],xmm0
 103b8ce:	00 00
 103b8d0:	c5 fa 6f 84 24 78 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x378]
 103b8d7:	00 00
 103b8d9:	c5 fa 7f 84 24 88 03 	vmovdqu XMMWORD PTR [rsp+0x388],xmm0
 103b8e0:	00 00
 103b8e2:	c5 fa 6f 84 24 78 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x378]
 103b8e9:	00 00
 103b8eb:	c5 fa 7f 84 24 98 03 	vmovdqu XMMWORD PTR [rsp+0x398],xmm0
 103b8f2:	00 00
 103b8f4:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
 103b8fb:	00
 103b8fc:	48 8b 94 24 78 03 00 	mov    rdx,QWORD PTR [rsp+0x378]
 103b903:	00
 103b904:	48 8b 9c 24 80 03 00 	mov    rbx,QWORD PTR [rsp+0x380]
 103b90b:	00
 103b90c:	e8 9f 49 00 00       	call   10402b0 <array_list.AlignedManaged(u8,null).appendSlice>
 103b911:	66 89 c2             	mov    dx,ax
 103b914:	81 e2 ff ff 00 00    	and    edx,0xffff
 103b91a:	66 83 fa 00          	cmp    dx,0x0
 103b91e:	0f 86 92 00 00 00    	jbe    103b9b6 <lib.deunicodeCustomAlloc+0x8d6>
 103b924:	66 89 84 24 de 04 00 	mov    WORD PTR [rsp+0x4de],ax
 103b92b:	00
 103b92c:	66 8b 94 24 de 04 00 	mov    dx,WORD PTR [rsp+0x4de]
 103b933:	00
 103b934:	c5 fe 6f 84 24 30 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x130]
 103b93b:	00 00
 103b93d:	c5 fe 7f 84 24 a8 03 	vmovdqu YMMWORD PTR [rsp+0x3a8],ymm0
 103b944:	00 00
 103b946:	48 8b 84 24 50 01 00 	mov    rax,QWORD PTR [rsp+0x150]
 103b94d:	00
 103b94e:	48 89 84 24 c8 03 00 	mov    QWORD PTR [rsp+0x3c8],rax
 103b955:	00
 103b956:	66 89 94 24 e0 04 00 	mov    WORD PTR [rsp+0x4e0],dx
 103b95d:	00
 103b95e:	c5 fe 6f 84 24 a8 03 	vmovdqu ymm0,YMMWORD PTR [rsp+0x3a8]
 103b965:	00 00
 103b967:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103b96c:	48 8b 84 24 c8 03 00 	mov    rax,QWORD PTR [rsp+0x3c8]
 103b973:	00
 103b974:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103b979:	e8 82 41 00 00       	call   103fb00 <array_list.AlignedManaged(u8,null).deinit>
 103b97e:	66 8b 84 24 e0 04 00 	mov    ax,WORD PTR [rsp+0x4e0]
 103b985:	00
 103b986:	66 89 84 24 e0 03 00 	mov    WORD PTR [rsp+0x3e0],ax
 103b98d:	00
 103b98e:	e8 4d 3b 00 00       	call   103f4e0 <builtin.returnError>
 103b993:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103b998:	c5 fa 6f 84 24 d0 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x3d0]
 103b99f:	00 00
 103b9a1:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103b9a5:	48 8b 94 24 e0 03 00 	mov    rdx,QWORD PTR [rsp+0x3e0]
 103b9ac:	00
 103b9ad:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103b9b1:	e9 25 03 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103b9b6:	48 8b 84 24 90 03 00 	mov    rax,QWORD PTR [rsp+0x390]
 103b9bd:	00
 103b9be:	48 83 f8 01          	cmp    rax,0x1
 103b9c2:	0f 86 b3 00 00 00    	jbe    103ba7b <lib.deunicodeCustomAlloc+0x99b>
 103b9c8:	48 8b 84 24 90 03 00 	mov    rax,QWORD PTR [rsp+0x390]
 103b9cf:	00
 103b9d0:	48 83 e8 01          	sub    rax,0x1
 103b9d4:	48 89 84 24 e8 03 00 	mov    QWORD PTR [rsp+0x3e8],rax
 103b9db:	00
 103b9dc:	0f 92 84 24 f0 03 00 	setb   BYTE PTR [rsp+0x3f0]
 103b9e3:	00
 103b9e4:	8a 94 24 f0 03 00 00 	mov    dl,BYTE PTR [rsp+0x3f0]
 103b9eb:	48 89 84 24 f8 03 00 	mov    QWORD PTR [rsp+0x3f8],rax
 103b9f2:	00
 103b9f3:	0f 92 84 24 00 04 00 	setb   BYTE PTR [rsp+0x400]
 103b9fa:	00
 103b9fb:	80 fa 01             	cmp    dl,0x1
 103b9fe:	0f 85 05 00 00 00    	jne    103ba09 <lib.deunicodeCustomAlloc+0x929>
 103ba04:	e8 07 38 00 00       	call   103f210 <debug.FullPanic((function 'defaultPanic')).integerOverflow>
 103ba09:	48 8b 84 24 f8 03 00 	mov    rax,QWORD PTR [rsp+0x3f8]
 103ba10:	00
 103ba11:	e9 00 00 00 00       	jmp    103ba16 <lib.deunicodeCustomAlloc+0x936>
 103ba16:	c5 fa 6f 84 24 88 03 	vmovdqu xmm0,XMMWORD PTR [rsp+0x388]
 103ba1d:	00 00
 103ba1f:	c5 fa 7f 84 24 08 04 	vmovdqu XMMWORD PTR [rsp+0x408],xmm0
 103ba26:	00 00
 103ba28:	48 8b 94 24 10 04 00 	mov    rdx,QWORD PTR [rsp+0x410]
 103ba2f:	00
 103ba30:	48 39 d0             	cmp    rax,rdx
 103ba33:	0f 83 05 00 00 00    	jae    103ba3e <lib.deunicodeCustomAlloc+0x95e>
 103ba39:	e9 25 00 00 00       	jmp    103ba63 <lib.deunicodeCustomAlloc+0x983>
 103ba3e:	48 89 84 24 18 04 00 	mov    QWORD PTR [rsp+0x418],rax
 103ba45:	00
 103ba46:	48 89 94 24 20 04 00 	mov    QWORD PTR [rsp+0x420],rdx
 103ba4d:	00
 103ba4e:	48 8b 84 24 18 04 00 	mov    rax,QWORD PTR [rsp+0x418]
 103ba55:	00
 103ba56:	48 8b 94 24 20 04 00 	mov    rdx,QWORD PTR [rsp+0x420]
 103ba5d:	00
 103ba5e:	e8 1d 3d 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103ba63:	48 8b 94 24 08 04 00 	mov    rdx,QWORD PTR [rsp+0x408]
 103ba6a:	00
 103ba6b:	48 8d 14 02          	lea    rdx,[rdx+rax*1]
 103ba6f:	8a 02                	mov    al,BYTE PTR [rdx]
 103ba71:	3c 20                	cmp    al,0x20
 103ba73:	0f 94 c0             	sete   al
 103ba76:	e9 07 00 00 00       	jmp    103ba82 <lib.deunicodeCustomAlloc+0x9a2>
 103ba7b:	31 c0                	xor    eax,eax
 103ba7d:	e9 00 00 00 00       	jmp    103ba82 <lib.deunicodeCustomAlloc+0x9a2>
 103ba82:	88 84 24 e5 04 00 00 	mov    BYTE PTR [rsp+0x4e5],al
 103ba89:	34 01                	xor    al,0x1
 103ba8b:	a8 01                	test   al,0x1
 103ba8d:	0f 84 05 00 00 00    	je     103ba98 <lib.deunicodeCustomAlloc+0x9b8>
 103ba93:	e9 83 01 00 00       	jmp    103bc1b <lib.deunicodeCustomAlloc+0xb3b>
 103ba98:	e9 00 00 00 00       	jmp    103ba9d <lib.deunicodeCustomAlloc+0x9bd>
 103ba9d:	c6 84 24 e6 04 00 00 	mov    BYTE PTR [rsp+0x4e6],0x1
 103baa4:	01
 103baa5:	48 8b 84 24 c8 04 00 	mov    rax,QWORD PTR [rsp+0x4c8]
 103baac:	00
 103baad:	48 89 84 24 28 04 00 	mov    QWORD PTR [rsp+0x428],rax
 103bab4:	00
 103bab5:	80 bc 24 2c 04 00 00 	cmp    BYTE PTR [rsp+0x42c],0x0
 103babc:	00
 103babd:	0f 84 2c 01 00 00    	je     103bbef <lib.deunicodeCustomAlloc+0xb0f>
 103bac3:	48 8b 84 24 c8 04 00 	mov    rax,QWORD PTR [rsp+0x4c8]
 103baca:	00
 103bacb:	48 89 84 24 30 04 00 	mov    QWORD PTR [rsp+0x430],rax
 103bad2:	00
 103bad3:	80 bc 24 34 04 00 00 	cmp    BYTE PTR [rsp+0x434],0x0
 103bada:	00
 103badb:	0f 84 05 00 00 00    	je     103bae6 <lib.deunicodeCustomAlloc+0xa06>
 103bae1:	e9 05 00 00 00       	jmp    103baeb <lib.deunicodeCustomAlloc+0xa0b>
 103bae6:	e8 b5 42 00 00       	call   103fda0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103baeb:	48 89 84 24 38 04 00 	mov    QWORD PTR [rsp+0x438],rax
 103baf2:	00
 103baf3:	8b 94 24 38 04 00 00 	mov    edx,DWORD PTR [rsp+0x438]
 103bafa:	89 94 24 d4 04 00 00 	mov    DWORD PTR [rsp+0x4d4],edx
 103bb01:	8b 84 24 d4 04 00 00 	mov    eax,DWORD PTR [rsp+0x4d4]
 103bb08:	e8 e3 42 00 00       	call   103fdf0 <lib.getReplacement>
 103bb0d:	48 89 84 24 40 04 00 	mov    QWORD PTR [rsp+0x440],rax
 103bb14:	00
 103bb15:	48 89 94 24 48 04 00 	mov    QWORD PTR [rsp+0x448],rdx
 103bb1c:	00
 103bb1d:	48 89 84 24 50 04 00 	mov    QWORD PTR [rsp+0x450],rax
 103bb24:	00
 103bb25:	48 89 94 24 58 04 00 	mov    QWORD PTR [rsp+0x458],rdx
 103bb2c:	00
 103bb2d:	c6 84 24 e3 04 00 00 	mov    BYTE PTR [rsp+0x4e3],0x1
 103bb34:	01
 103bb35:	48 89 84 24 e0 02 00 	mov    QWORD PTR [rsp+0x2e0],rax
 103bb3c:	00
 103bb3d:	48 89 94 24 e8 02 00 	mov    QWORD PTR [rsp+0x2e8],rdx
 103bb44:	00
 103bb45:	48 89 84 24 60 04 00 	mov    QWORD PTR [rsp+0x460],rax
 103bb4c:	00
 103bb4d:	48 89 94 24 68 04 00 	mov    QWORD PTR [rsp+0x468],rdx
 103bb54:	00
 103bb55:	48 83 bc 24 60 04 00 	cmp    QWORD PTR [rsp+0x460],0x0
 103bb5c:	00 00
 103bb5e:	0f 85 0d 00 00 00    	jne    103bb71 <lib.deunicodeCustomAlloc+0xa91>
 103bb64:	c6 84 24 e6 04 00 00 	mov    BYTE PTR [rsp+0x4e6],0x0
 103bb6b:	00
 103bb6c:	e9 79 00 00 00       	jmp    103bbea <lib.deunicodeCustomAlloc+0xb0a>
 103bb71:	48 83 bc 24 40 04 00 	cmp    QWORD PTR [rsp+0x440],0x0
 103bb78:	00 00
 103bb7a:	0f 84 05 00 00 00    	je     103bb85 <lib.deunicodeCustomAlloc+0xaa5>
 103bb80:	e9 05 00 00 00       	jmp    103bb8a <lib.deunicodeCustomAlloc+0xaaa>
 103bb85:	e8 16 42 00 00       	call   103fda0 <debug.FullPanic((function 'defaultPanic')).unwrapNull>
 103bb8a:	c5 fa 6f 84 24 40 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x440]
 103bb91:	00 00
 103bb93:	c5 fa 7f 84 24 70 04 	vmovdqu XMMWORD PTR [rsp+0x470],xmm0
 103bb9a:	00 00
 103bb9c:	48 8b 84 24 78 04 00 	mov    rax,QWORD PTR [rsp+0x478]
 103bba3:	00
 103bba4:	48 83 f8 00          	cmp    rax,0x0
 103bba8:	0f 86 05 00 00 00    	jbe    103bbb3 <lib.deunicodeCustomAlloc+0xad3>
 103bbae:	e9 17 00 00 00       	jmp    103bbca <lib.deunicodeCustomAlloc+0xaea>
 103bbb3:	48 89 84 24 80 04 00 	mov    QWORD PTR [rsp+0x480],rax
 103bbba:	00
 103bbbb:	31 c0                	xor    eax,eax
 103bbbd:	48 8b 94 24 80 04 00 	mov    rdx,QWORD PTR [rsp+0x480]
 103bbc4:	00
 103bbc5:	e8 b6 3b 00 00       	call   103f780 <debug.FullPanic((function 'defaultPanic')).outOfBounds>
 103bbca:	48 8b 84 24 70 04 00 	mov    rax,QWORD PTR [rsp+0x470]
 103bbd1:	00
 103bbd2:	31 d2                	xor    edx,edx
 103bbd4:	48 8d 04 10          	lea    rax,[rax+rdx*1]
 103bbd8:	8a 10                	mov    dl,BYTE PTR [rax]
 103bbda:	80 fa 20             	cmp    dl,0x20
 103bbdd:	0f 94 84 24 e6 04 00 	sete   BYTE PTR [rsp+0x4e6]
 103bbe4:	00
 103bbe5:	e9 00 00 00 00       	jmp    103bbea <lib.deunicodeCustomAlloc+0xb0a>
 103bbea:	e9 05 00 00 00       	jmp    103bbf4 <lib.deunicodeCustomAlloc+0xb14>
 103bbef:	e9 00 00 00 00       	jmp    103bbf4 <lib.deunicodeCustomAlloc+0xb14>
 103bbf4:	8a 84 24 e6 04 00 00 	mov    al,BYTE PTR [rsp+0x4e6]
 103bbfb:	a8 01                	test   al,0x1
 103bbfd:	0f 84 12 00 00 00    	je     103bc15 <lib.deunicodeCustomAlloc+0xb35>
 103bc03:	48 8d 84 24 30 01 00 	lea    rax,[rsp+0x130]
 103bc0a:	00
 103bc0b:	e8 90 47 00 00       	call   10403a0 <array_list.AlignedManaged(u8,null).pop>
 103bc10:	e9 05 00 00 00       	jmp    103bc1a <lib.deunicodeCustomAlloc+0xb3a>
 103bc15:	e9 00 00 00 00       	jmp    103bc1a <lib.deunicodeCustomAlloc+0xb3a>
 103bc1a:	90                   	nop
 103bc1b:	e9 05 00 00 00       	jmp    103bc25 <lib.deunicodeCustomAlloc+0xb45>
 103bc20:	e9 05 00 00 00       	jmp    103bc2a <lib.deunicodeCustomAlloc+0xb4a>
 103bc25:	e9 be fa ff ff       	jmp    103b6e8 <lib.deunicodeCustomAlloc+0x608>
 103bc2a:	48 8d 84 24 88 04 00 	lea    rax,[rsp+0x488]
 103bc31:	00
 103bc32:	48 8d 94 24 30 01 00 	lea    rdx,[rsp+0x130]
 103bc39:	00
 103bc3a:	e8 11 4a 00 00       	call   1040650 <array_list.AlignedManaged(u8,null).toOwnedSlice>
 103bc3f:	c5 fe 6f 84 24 30 01 	vmovdqu ymm0,YMMWORD PTR [rsp+0x130]
 103bc46:	00 00
 103bc48:	c5 fe 7f 84 24 a0 04 	vmovdqu YMMWORD PTR [rsp+0x4a0],ymm0
 103bc4f:	00 00
 103bc51:	48 8b 84 24 50 01 00 	mov    rax,QWORD PTR [rsp+0x150]
 103bc58:	00
 103bc59:	48 89 84 24 c0 04 00 	mov    QWORD PTR [rsp+0x4c0],rax
 103bc60:	00
 103bc61:	c5 fe 6f 84 24 a0 04 	vmovdqu ymm0,YMMWORD PTR [rsp+0x4a0]
 103bc68:	00 00
 103bc6a:	c5 fe 7f 04 24       	vmovdqu YMMWORD PTR [rsp],ymm0
 103bc6f:	48 8b 84 24 c0 04 00 	mov    rax,QWORD PTR [rsp+0x4c0]
 103bc76:	00
 103bc77:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
 103bc7c:	e8 7f 3e 00 00       	call   103fb00 <array_list.AlignedManaged(u8,null).deinit>
 103bc81:	66 83 bc 24 98 04 00 	cmp    WORD PTR [rsp+0x498],0x0
 103bc88:	00 00
 103bc8a:	0f 85 23 00 00 00    	jne    103bcb3 <lib.deunicodeCustomAlloc+0xbd3>
 103bc90:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103bc95:	c5 fa 6f 84 24 88 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x488]
 103bc9c:	00 00
 103bc9e:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103bca2:	48 8b 94 24 98 04 00 	mov    rdx,QWORD PTR [rsp+0x498]
 103bca9:	00
 103bcaa:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103bcae:	e9 28 00 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103bcb3:	e8 28 38 00 00       	call   103f4e0 <builtin.returnError>
 103bcb8:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
 103bcbd:	c5 fa 6f 84 24 88 04 	vmovdqu xmm0,XMMWORD PTR [rsp+0x488]
 103bcc4:	00 00
 103bcc6:	c5 fa 7f 00          	vmovdqu XMMWORD PTR [rax],xmm0
 103bcca:	48 8b 94 24 98 04 00 	mov    rdx,QWORD PTR [rsp+0x498]
 103bcd1:	00
 103bcd2:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
 103bcd6:	e9 00 00 00 00       	jmp    103bcdb <lib.deunicodeCustomAlloc+0xbfb>
 103bcdb:	48 89 ec             	mov    rsp,rbp
 103bcde:	5d                   	pop    rbp
 103bcdf:	c3                   	ret
	...
