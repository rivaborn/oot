glabel func_80106D40
/* B7DEE0 80106D40 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B7DEE4 80106D44 AFBF001C */  sw    $ra, 0x1c($sp)
/* B7DEE8 80106D48 AFA40020 */  sw    $a0, 0x20($sp)
/* B7DEEC 80106D4C AFA50024 */  sw    $a1, 0x24($sp)
/* B7DEF0 80106D50 808F0029 */  lb    $t7, 0x29($a0)
/* B7DEF4 80106D54 3C188015 */  lui   $t8, %hi(D_80153984) # $t8, 0x8015
/* B7DEF8 80106D58 8FAC0020 */  lw    $t4, 0x20($sp)
/* B7DEFC 80106D5C 29E1001E */  slti  $at, $t7, 0x1e
/* B7DF00 80106D60 54200021 */  bnezl $at, .L80106DE8
/* B7DF04 80106D64 81820029 */   lb    $v0, 0x29($t4)
/* B7DF08 80106D68 87183984 */  lh    $t8, %lo(D_80153984)($t8)
/* B7DF0C 80106D6C 24190001 */  li    $t9, 1
/* B7DF10 80106D70 3C018015 */  lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7DF14 80106D74 1700001B */  bnez  $t8, .L80106DE4
/* B7DF18 80106D78 248320D8 */   addiu $v1, $a0, 0x20d8
/* B7DF1C 80106D7C A4393984 */  sh    $t9, %lo(D_80153984)($at)
/* B7DF20 80106D80 34018000 */  li    $at, 32768
/* B7DF24 80106D84 00611021 */  addu  $v0, $v1, $at
/* B7DF28 80106D88 904863E5 */  lbu   $t0, 0x63e5($v0)
/* B7DF2C 80106D8C 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DF30 80106D90 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DF34 80106D94 2509FFFF */  addiu $t1, $t0, -1
/* B7DF38 80106D98 A02963E6 */  sb    $t1, 0x63e6($at)
/* B7DF3C 80106D9C 904A63E5 */  lbu   $t2, 0x63e5($v0)
/* B7DF40 80106DA0 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DF44 80106DA4 24044809 */  li    $a0, 18441
/* B7DF48 80106DA8 29410081 */  slti  $at, $t2, 0x81
/* B7DF4C 80106DAC 14200004 */  bnez  $at, .L80106DC0
/* B7DF50 80106DB0 3C058013 */   lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DF54 80106DB4 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DF58 80106DB8 10000037 */  b     .L80106E98
/* B7DF5C 80106DBC A02063E6 */   sb    $zero, 0x63e6($at)
.L80106DC0:
/* B7DF60 80106DC0 3C0B8013 */  lui   $t3, %hi(D_801333E8) # $t3, 0x8013
/* B7DF64 80106DC4 256B33E8 */  addiu $t3, %lo(D_801333E8) # addiu $t3, $t3, 0x33e8
/* B7DF68 80106DC8 AFAB0014 */  sw    $t3, 0x14($sp)
/* B7DF6C 80106DCC 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7DF70 80106DD0 24060004 */  li    $a2, 4
/* B7DF74 80106DD4 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7DF78 80106DD8 AFA70010 */   sw    $a3, 0x10($sp)
/* B7DF7C 80106DDC 1000002E */  b     .L80106E98
/* B7DF80 80106DE0 00000000 */   nop   
.L80106DE4:
/* B7DF84 80106DE4 81820029 */  lb    $v0, 0x29($t4)
.L80106DE8:
/* B7DF88 80106DE8 3C0D8015 */  lui   $t5, %hi(D_80153984) # $t5, 0x8015
/* B7DF8C 80106DEC 2841FFE3 */  slti  $at, $v0, -0x1d
/* B7DF90 80106DF0 10200021 */  beqz  $at, .L80106E78
/* B7DF94 80106DF4 00000000 */   nop   
/* B7DF98 80106DF8 85AD3984 */  lh    $t5, %lo(D_80153984)($t5)
/* B7DF9C 80106DFC 240F0001 */  li    $t7, 1
/* B7DFA0 80106E00 3C018015 */  lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7DFA4 80106E04 15A0001C */  bnez  $t5, .L80106E78
/* B7DFA8 80106E08 258320D8 */   addiu $v1, $t4, 0x20d8
/* B7DFAC 80106E0C A42F3984 */  sh    $t7, %lo(D_80153984)($at)
/* B7DFB0 80106E10 34018000 */  li    $at, 32768
/* B7DFB4 80106E14 00611021 */  addu  $v0, $v1, $at
/* B7DFB8 80106E18 905863E5 */  lbu   $t8, 0x63e5($v0)
/* B7DFBC 80106E1C 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DFC0 80106E20 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B7DFC4 80106E24 27190001 */  addiu $t9, $t8, 1
/* B7DFC8 80106E28 A03963E6 */  sb    $t9, 0x63e6($at)
/* B7DFCC 80106E2C 904863E5 */  lbu   $t0, 0x63e5($v0)
/* B7DFD0 80106E30 93AE0027 */  lbu   $t6, 0x27($sp)
/* B7DFD4 80106E34 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B7DFD8 80106E38 24044809 */  li    $a0, 18441
/* B7DFDC 80106E3C 01C8082A */  slt   $at, $t6, $t0
/* B7DFE0 80106E40 10200004 */  beqz  $at, .L80106E54
/* B7DFE4 80106E44 3C058013 */   lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B7DFE8 80106E48 24617FFF */  addiu $at, $v1, 0x7fff
/* B7DFEC 80106E4C 10000012 */  b     .L80106E98
/* B7DFF0 80106E50 A02E63E6 */   sb    $t6, 0x63e6($at)
.L80106E54:
/* B7DFF4 80106E54 3C098013 */  lui   $t1, %hi(D_801333E8) # $t1, 0x8013
/* B7DFF8 80106E58 252933E8 */  addiu $t1, %lo(D_801333E8) # addiu $t1, $t1, 0x33e8
/* B7DFFC 80106E5C AFA90014 */  sw    $t1, 0x14($sp)
/* B7E000 80106E60 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B7E004 80106E64 24060004 */  li    $a2, 4
/* B7E008 80106E68 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B7E00C 80106E6C AFA70010 */   sw    $a3, 0x10($sp)
/* B7E010 80106E70 10000009 */  b     .L80106E98
/* B7E014 80106E74 00000000 */   nop   
.L80106E78:
/* B7E018 80106E78 04400003 */  bltz  $v0, .L80106E88
/* B7E01C 80106E7C 00021823 */   negu  $v1, $v0
/* B7E020 80106E80 10000001 */  b     .L80106E88
/* B7E024 80106E84 00401825 */   move  $v1, $v0
.L80106E88:
/* B7E028 80106E88 2861001E */  slti  $at, $v1, 0x1e
/* B7E02C 80106E8C 10200002 */  beqz  $at, .L80106E98
/* B7E030 80106E90 3C018015 */   lui   $at, %hi(D_80153984) # $at, 0x8015
/* B7E034 80106E94 A4203984 */  sh    $zero, %lo(D_80153984)($at)
.L80106E98:
/* B7E038 80106E98 3C048016 */  lui   $a0, %hi(gGameInfo) # $a0, 0x8016
/* B7E03C 80106E9C 2484FA90 */  addiu $a0, %lo(gGameInfo) # addiu $a0, $a0, -0x570
/* B7E040 80106EA0 8C8A0000 */  lw    $t2, ($a0)
/* B7E044 80106EA4 8FA30020 */  lw    $v1, 0x20($sp)
/* B7E048 80106EA8 854B0B18 */  lh    $t3, 0xb18($t2)
/* B7E04C 80106EAC 246320D8 */  addiu $v1, $v1, 0x20d8
/* B7E050 80106EB0 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E054 80106EB4 A42B63D9 */  sh    $t3, 0x63d9($at)
/* B7E058 80106EB8 93AD0027 */  lbu   $t5, 0x27($sp)
/* B7E05C 80106EBC 34018000 */  li    $at, 32768
/* B7E060 80106EC0 00611021 */  addu  $v0, $v1, $at
/* B7E064 80106EC4 24010001 */  li    $at, 1
/* B7E068 80106EC8 55A1000A */  bnel  $t5, $at, .L80106EF4
/* B7E06C 80106ECC 904963E5 */   lbu   $t1, 0x63e5($v0)
/* B7E070 80106ED0 904C63E5 */  lbu   $t4, 0x63e5($v0)
/* B7E074 80106ED4 8C8F0000 */  lw    $t7, ($a0)
/* B7E078 80106ED8 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E07C 80106EDC 000CC040 */  sll   $t8, $t4, 1
/* B7E080 80106EE0 01F8C821 */  addu  $t9, $t7, $t8
/* B7E084 80106EE4 87280B1C */  lh    $t0, 0xb1c($t9)
/* B7E088 80106EE8 10000008 */  b     .L80106F0C
/* B7E08C 80106EEC A42863DB */   sh    $t0, 0x63db($at)
/* B7E090 80106EF0 904963E5 */  lbu   $t1, 0x63e5($v0)
.L80106EF4:
/* B7E094 80106EF4 8C8E0000 */  lw    $t6, ($a0)
/* B7E098 80106EF8 24617FFF */  addiu $at, $v1, 0x7fff
/* B7E09C 80106EFC 00095040 */  sll   $t2, $t1, 1
/* B7E0A0 80106F00 01CA5821 */  addu  $t3, $t6, $t2
/* B7E0A4 80106F04 856D0B1A */  lh    $t5, 0xb1a($t3)
/* B7E0A8 80106F08 A42D63DB */  sh    $t5, 0x63db($at)
.L80106F0C:
/* B7E0AC 80106F0C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B7E0B0 80106F10 27BD0020 */  addiu $sp, $sp, 0x20
/* B7E0B4 80106F14 03E00008 */  jr    $ra
/* B7E0B8 80106F18 00000000 */   nop   

