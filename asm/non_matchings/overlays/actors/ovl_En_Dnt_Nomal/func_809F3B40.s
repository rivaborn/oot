glabel func_809F3B40
/* 00880 809F3B40 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00884 809F3B44 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00888 809F3B48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0088C 809F3B4C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00890 809F3B50 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00894 809F3B54 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00898 809F3B58 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0089C 809F3B5C 24843128 */  addiu   $a0, $a0, 0x3128           ## $a0 = 06003128
/* 008A0 809F3B60 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008A4 809F3B64 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 008A8 809F3B68 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 008AC 809F3B6C 468021A0 */  cvt.s.w $f6, $f4
/* 008B0 809F3B70 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008B4 809F3B74 24A53128 */  addiu   $a1, $a1, 0x3128           ## $a1 = 06003128
/* 008B8 809F3B78 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008BC 809F3B7C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008C0 809F3B80 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008C4 809F3B84 4600320D */  trunc.w.s $f8, $f6
/* 008C8 809F3B88 440F4000 */  mfc1    $t7, $f8
/* 008CC 809F3B8C 00000000 */  nop
/* 008D0 809F3B90 A60F026E */  sh      $t7, 0x026E($s0)           ## 0000026E
/* 008D4 809F3B94 8618026E */  lh      $t8, 0x026E($s0)           ## 0000026E
/* 008D8 809F3B98 AFA00014 */  sw      $zero, 0x0014($sp)
/* 008DC 809F3B9C E7B20018 */  swc1    $f18, 0x0018($sp)
/* 008E0 809F3BA0 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 008E4 809F3BA4 00000000 */  nop
/* 008E8 809F3BA8 46805420 */  cvt.s.w $f16, $f10
/* 008EC 809F3BAC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 008F0 809F3BB0 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 008F4 809F3BB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 008F8 809F3BB8 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 008FC 809F3BBC 3C19809F */  lui     $t9, %hi(func_809F3BE4)    ## $t9 = 809F0000
/* 00900 809F3BC0 27393BE4 */  addiu   $t9, $t9, %lo(func_809F3BE4) ## $t9 = 809F3BE4
/* 00904 809F3BC4 A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 00908 809F3BC8 AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
/* 0090C 809F3BCC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00910 809F3BD0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00914 809F3BD4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00918 809F3BD8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0091C 809F3BDC 03E00008 */  jr      $ra
/* 00920 809F3BE0 00000000 */  nop
