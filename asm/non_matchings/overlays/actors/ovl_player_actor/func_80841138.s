.late_rodata
glabel D_8085541C
    .float 1.2

glabel D_80855420
 .word 0x3F0D3DCB

.text
glabel func_80841138
/* 0EF28 80841138 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0EF2C 8084113C F7B60018 */  sdc1    $f22, 0x0018($sp)          
/* 0EF30 80841140 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0EF34 80841144 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 0EF38 80841148 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0EF3C 8084114C F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 0EF40 80841150 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0EF44 80841154 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0EF48 80841158 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 0EF4C 8084115C C4840864 */  lwc1    $f4, 0x0864($a0)           ## 00000864
/* 0EF50 80841160 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0EF54 80841164 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0EF58 80841168 4616203C */  c.lt.s  $f4, $f22                  
/* 0EF5C 8084116C 00000000 */  nop
/* 0EF60 80841170 4500002B */  bc1f    .L80841220                 
/* 0EF64 80841174 00000000 */  nop
/* 0EF68 80841178 3C028016 */  lui     $v0, %hi(gGameInfo)
/* 0EF6C 8084117C 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 0EF70 80841180 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0EF74 80841184 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0EF78 80841188 844F005A */  lh      $t7, 0x005A($v0)           ## 8016005A
/* 0EF7C 8084118C 844E0110 */  lh      $t6, 0x0110($v0)           ## 80160110
/* 0EF80 80841190 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0EF84 80841194 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 0EF88 80841198 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 0EF8C 8084119C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 0EF90 808411A0 468084A0 */  cvt.s.w $f18, $f16                 
/* 0EF94 808411A4 46803220 */  cvt.s.w $f8, $f6                   
/* 0EF98 808411A8 460C9103 */  div.s   $f4, $f18, $f12            
/* 0EF9C 808411AC 460A4502 */  mul.s   $f20, $f8, $f10            
/* 0EFA0 808411B0 44052000 */  mfc1    $a1, $f4                   
/* 0EFA4 808411B4 0C2100A7 */  jal     func_8084029C              
/* 0EFA8 808411B8 00000000 */  nop
/* 0EFAC 808411BC 9218015B */  lbu     $t8, 0x015B($s0)           ## 0000015B
/* 0EFB0 808411C0 3C068085 */  lui     $a2, %hi(D_80853BFC)       ## $a2 = 80850000
/* 0EFB4 808411C4 261101B4 */  addiu   $s1, $s0, 0x01B4           ## $s1 = 000001B4
/* 0EFB8 808411C8 0018C880 */  sll     $t9, $t8,  2               
/* 0EFBC 808411CC 00D93021 */  addu    $a2, $a2, $t9              
/* 0EFC0 808411D0 8CC63BFC */  lw      $a2, %lo(D_80853BFC)($a2)  
/* 0EFC4 808411D4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001B4
/* 0EFC8 808411D8 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0EFCC 808411DC 0C0290A8 */  jal     func_800A42A0              
/* 0EFD0 808411E0 8E070868 */  lw      $a3, 0x0868($s0)           ## 00000868
/* 0EFD4 808411E4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0EFD8 808411E8 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 0EFDC 808411EC C6060864 */  lwc1    $f6, 0x0864($s0)           ## 00000864
/* 0EFE0 808411F0 46144282 */  mul.s   $f10, $f8, $f20            
/* 0EFE4 808411F4 460A3400 */  add.s   $f16, $f6, $f10            
/* 0EFE8 808411F8 E6100864 */  swc1    $f16, 0x0864($s0)          ## 00000864
/* 0EFEC 808411FC C6000864 */  lwc1    $f0, 0x0864($s0)           ## 00000864
/* 0EFF0 80841200 4600B03E */  c.le.s  $f22, $f0                  
/* 0EFF4 80841204 00000000 */  nop
/* 0EFF8 80841208 45000003 */  bc1f    .L80841218                 
/* 0EFFC 8084120C 00000000 */  nop
/* 0F000 80841210 E6160864 */  swc1    $f22, 0x0864($s0)          ## 00000864
/* 0F004 80841214 C6000864 */  lwc1    $f0, 0x0864($s0)           ## 00000864
.L80841218:
/* 0F008 80841218 1000006B */  beq     $zero, $zero, .L808413C8   
/* 0F00C 8084121C 46000506 */  mov.s   $f20, $f0                  
.L80841220:
/* 0F010 80841220 8C42FA90 */  lw      $v0, %lo(gGameInfo)($v0)
/* 0F014 80841224 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0F018 80841228 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 0F01C 8084122C 84480074 */  lh      $t0, 0x0074($v0)           ## 00000074
/* 0F020 80841230 C6020838 */  lwc1    $f2, 0x0838($s0)           ## 00000838
/* 0F024 80841234 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0F028 80841238 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 0F02C 8084123C 00000000 */  nop
/* 0F030 80841240 46809120 */  cvt.s.w $f4, $f18                  
/* 0F034 80841244 46082183 */  div.s   $f6, $f4, $f8              
/* 0F038 80841248 46061001 */  sub.s   $f0, $f2, $f6              
/* 0F03C 8084124C 460A003C */  c.lt.s  $f0, $f10                  
/* 0F040 80841250 00000000 */  nop
/* 0F044 80841254 4502001F */  bc1fl   .L808412D4                 
/* 0F048 80841258 844D005E */  lh      $t5, 0x005E($v0)           ## 0000005E
/* 0F04C 8084125C 8449005C */  lh      $t1, 0x005C($v0)           ## 0000005C
/* 0F050 80841260 844A005A */  lh      $t2, 0x005A($v0)           ## 0000005A
/* 0F054 80841264 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0F058 80841268 44898000 */  mtc1    $t1, $f16                  ## $f16 = 0.00
/* 0F05C 8084126C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0F060 80841270 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 0F064 80841274 468084A0 */  cvt.s.w $f18, $f16                 
/* 0F068 80841278 4600B506 */  mov.s   $f20, $f22                 
/* 0F06C 8084127C 468032A0 */  cvt.s.w $f10, $f6                  
/* 0F070 80841280 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F074 80841284 460C9103 */  div.s   $f4, $f18, $f12            
/* 0F078 80841288 460C5403 */  div.s   $f16, $f10, $f12           
/* 0F07C 8084128C 46022202 */  mul.s   $f8, $f4, $f2              
/* 0F080 80841290 46104480 */  add.s   $f18, $f8, $f16            
/* 0F084 80841294 44059000 */  mfc1    $a1, $f18                  
/* 0F088 80841298 0C2100A7 */  jal     func_8084029C              
/* 0F08C 8084129C 00000000 */  nop
/* 0F090 808412A0 920B015B */  lbu     $t3, 0x015B($s0)           ## 0000015B
/* 0F094 808412A4 3C068085 */  lui     $a2, %hi(D_80853BFC)       ## $a2 = 80850000
/* 0F098 808412A8 261101B4 */  addiu   $s1, $s0, 0x01B4           ## $s1 = 000001B4
/* 0F09C 808412AC 000B6080 */  sll     $t4, $t3,  2               
/* 0F0A0 808412B0 00CC3021 */  addu    $a2, $a2, $t4              
/* 0F0A4 808412B4 8CC63BFC */  lw      $a2, %lo(D_80853BFC)($a2)  
/* 0F0A8 808412B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001B4
/* 0F0AC 808412BC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0F0B0 808412C0 0C0290A8 */  jal     func_800A42A0              
/* 0F0B4 808412C4 8E070868 */  lw      $a3, 0x0868($s0)           ## 00000868
/* 0F0B8 808412C8 10000040 */  beq     $zero, $zero, .L808413CC   
/* 0F0BC 808412CC 4616A03C */  c.lt.s  $f20, $f22                 
/* 0F0C0 808412D0 844D005E */  lh      $t5, 0x005E($v0)           ## 0000005E
.L808412D4:
/* 0F0C4 808412D4 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 0F0C8 808412D8 44816000 */  mtc1    $at, $f12                  ## $f12 = 1000.00
/* 0F0CC 808412DC 448D2000 */  mtc1    $t5, $f4                   ## $f4 = 0.00
/* 0F0D0 808412E0 00000000 */  nop
/* 0F0D4 808412E4 468021A0 */  cvt.s.w $f6, $f4                   
/* 0F0D8 808412E8 460C3283 */  div.s   $f10, $f6, $f12            
/* 0F0DC 808412EC 46005502 */  mul.s   $f20, $f10, $f0            
/* 0F0E0 808412F0 4616A03C */  c.lt.s  $f20, $f22                 
/* 0F0E4 808412F4 00000000 */  nop
/* 0F0E8 808412F8 45020012 */  bc1fl   .L80841344                 
/* 0F0EC 808412FC 84580060 */  lh      $t8, 0x0060($v0)           ## 00000060
/* 0F0F0 80841300 844E005C */  lh      $t6, 0x005C($v0)           ## 0000005C
/* 0F0F4 80841304 844F005A */  lh      $t7, 0x005A($v0)           ## 0000005A
/* 0F0F8 80841308 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F0FC 8084130C 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 0F100 80841310 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0F104 80841314 46804420 */  cvt.s.w $f16, $f8                  
/* 0F108 80841318 468032A0 */  cvt.s.w $f10, $f6                  
/* 0F10C 8084131C 460C8483 */  div.s   $f18, $f16, $f12           
/* 0F110 80841320 460C5203 */  div.s   $f8, $f10, $f12            
/* 0F114 80841324 46029102 */  mul.s   $f4, $f18, $f2             
/* 0F118 80841328 46082400 */  add.s   $f16, $f4, $f8             
/* 0F11C 8084132C 44058000 */  mfc1    $a1, $f16                  
/* 0F120 80841330 0C2100A7 */  jal     func_8084029C              
/* 0F124 80841334 00000000 */  nop
/* 0F128 80841338 1000000F */  beq     $zero, $zero, .L80841378   
/* 0F12C 8084133C 9219015B */  lbu     $t9, 0x015B($s0)           ## 0000015B
/* 0F130 80841340 84580060 */  lh      $t8, 0x0060($v0)           ## 00000060
.L80841344:
/* 0F134 80841344 3C018085 */  lui     $at, %hi(D_8085541C)       ## $at = 80850000
/* 0F138 80841348 C428541C */  lwc1    $f8, %lo(D_8085541C)($at)  
/* 0F13C 8084134C 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 0F140 80841350 4600B506 */  mov.s   $f20, $f22                 
/* 0F144 80841354 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0F148 80841358 468091A0 */  cvt.s.w $f6, $f18                  
/* 0F14C 8084135C 460C3283 */  div.s   $f10, $f6, $f12            
/* 0F150 80841360 46005102 */  mul.s   $f4, $f10, $f0             
/* 0F154 80841364 46082400 */  add.s   $f16, $f4, $f8             
/* 0F158 80841368 44058000 */  mfc1    $a1, $f16                  
/* 0F15C 8084136C 0C2100A7 */  jal     func_8084029C              
/* 0F160 80841370 00000000 */  nop
/* 0F164 80841374 9219015B */  lbu     $t9, 0x015B($s0)           ## 0000015B
.L80841378:
/* 0F168 80841378 3C068085 */  lui     $a2, %hi(D_80853BFC)       ## $a2 = 80850000
/* 0F16C 8084137C 261101B4 */  addiu   $s1, $s0, 0x01B4           ## $s1 = 000001B4
/* 0F170 80841380 00194080 */  sll     $t0, $t9,  2               
/* 0F174 80841384 00C83021 */  addu    $a2, $a2, $t0              
/* 0F178 80841388 8CC63BFC */  lw      $a2, %lo(D_80853BFC)($a2)  
/* 0F17C 8084138C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001B4
/* 0F180 80841390 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0F184 80841394 0C029097 */  jal     func_800A425C              
/* 0F188 80841398 8E070868 */  lw      $a3, 0x0868($s0)           ## 00000868
/* 0F18C 8084139C 3C018085 */  lui     $at, %hi(D_80855420)       ## $at = 80850000
/* 0F190 808413A0 C4265420 */  lwc1    $f6, %lo(D_80855420)($at)  
/* 0F194 808413A4 C6120868 */  lwc1    $f18, 0x0868($s0)          ## 00000868
/* 0F198 808413A8 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 0F19C 808413AC 24C62DD0 */  addiu   $a2, $a2, 0x2DD0           ## $a2 = 04002DD0
/* 0F1A0 808413B0 46069282 */  mul.s   $f10, $f18, $f6            
/* 0F1A4 808413B4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0F1A8 808413B8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001B4
/* 0F1AC 808413BC 44075000 */  mfc1    $a3, $f10                  
/* 0F1B0 808413C0 0C0290A8 */  jal     func_800A42A0              
/* 0F1B4 808413C4 00000000 */  nop
.L808413C8:
/* 0F1B8 808413C8 4616A03C */  c.lt.s  $f20, $f22                 
.L808413CC:
/* 0F1BC 808413CC 00000000 */  nop
/* 0F1C0 808413D0 45020008 */  bc1fl   .L808413F4                 
/* 0F1C4 808413D4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0F1C8 808413D8 4614B101 */  sub.s   $f4, $f22, $f20            
/* 0F1CC 808413DC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0F1D0 808413E0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 000001B4
/* 0F1D4 808413E4 44062000 */  mfc1    $a2, $f4                   
/* 0F1D8 808413E8 0C0290B9 */  jal     func_800A42E4              
/* 0F1DC 808413EC 00000000 */  nop
/* 0F1E0 808413F0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L808413F4:
/* 0F1E4 808413F4 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 0F1E8 808413F8 D7B60018 */  ldc1    $f22, 0x0018($sp)          
/* 0F1EC 808413FC 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 0F1F0 80841400 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0F1F4 80841404 03E00008 */  jr      $ra                        
/* 0F1F8 80841408 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
