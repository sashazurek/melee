.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_80221288
func_80221288:
/* 80221288 0021DE68  7C 08 02 A6 */	mflr r0
/* 8022128C 0021DE6C  3C 80 80 3F */	lis r4, lbl_803E8B5C@ha
/* 80221290 0021DE70  90 01 00 04 */	stw r0, 4(r1)
/* 80221294 0021DE74  38 00 00 00 */	li r0, 0
/* 80221298 0021DE78  54 05 08 3C */	slwi r5, r0, 1
/* 8022129C 0021DE7C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 802212A0 0021DE80  38 04 8B 5C */	addi r0, r4, lbl_803E8B5C@l
/* 802212A4 0021DE84  BF 61 00 14 */	stmw r27, 0x14(r1)
/* 802212A8 0021DE88  3B 63 00 00 */	addi r27, r3, 0
/* 802212AC 0021DE8C  3C 60 80 22 */	lis r3, lbl_80221208@ha
/* 802212B0 0021DE90  7F C0 2A 14 */	add r30, r0, r5
/* 802212B4 0021DE94  3B E3 12 08 */	addi r31, r3, lbl_80221208@l
/* 802212B8 0021DE98  83 BB 00 2C */	lwz r29, 0x2c(r27)
/* 802212BC 0021DE9C  48 00 00 78 */	b lbl_80221334
lbl_802212C0:
/* 802212C0 0021DEA0  38 60 00 02 */	li r3, 2
/* 802212C4 0021DEA4  4B FA 20 FD */	bl func_801C33C0
/* 802212C8 0021DEA8  38 83 00 00 */	addi r4, r3, 0
/* 802212CC 0021DEAC  2C 04 FF FF */	cmpwi r4, -1
/* 802212D0 0021DEB0  41 82 00 60 */	beq lbl_80221330
/* 802212D4 0021DEB4  7F 63 DB 78 */	mr r3, r27
/* 802212D8 0021DEB8  4B FA 2C CD */	bl func_801C3FA4
/* 802212DC 0021DEBC  38 C3 00 00 */	addi r6, r3, 0
/* 802212E0 0021DEC0  38 BD 00 00 */	addi r5, r29, 0
/* 802212E4 0021DEC4  39 1F 00 00 */	addi r8, r31, 0
/* 802212E8 0021DEC8  38 60 00 00 */	li r3, 0
/* 802212EC 0021DECC  38 80 00 00 */	li r4, 0
/* 802212F0 0021DED0  38 E0 00 00 */	li r7, 0
/* 802212F4 0021DED4  39 20 00 00 */	li r9, 0
/* 802212F8 0021DED8  4B FA 7A 05 */	bl func_801C8CFC
/* 802212FC 0021DEDC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80221300 0021DEE0  41 82 00 30 */	beq lbl_80221330
/* 80221304 0021DEE4  C0 42 C2 D8 */	lfs f2, lbl_804DBCB8@sda21(r2)
/* 80221308 0021DEE8  7F 83 E3 78 */	mr r3, r28
/* 8022130C 0021DEEC  C0 22 C2 E0 */	lfs f1, lbl_804DBCC0@sda21(r2)
/* 80221310 0021DEF0  FC 60 10 90 */	fmr f3, f2
/* 80221314 0021DEF4  C0 82 C2 DC */	lfs f4, lbl_804DBCBC@sda21(r2)
/* 80221318 0021DEF8  FC A0 10 90 */	fmr f5, f2
/* 8022131C 0021DEFC  C0 E2 C2 E4 */	lfs f7, lbl_804DBCC4@sda21(r2)
/* 80221320 0021DF00  FC C0 10 90 */	fmr f6, f2
/* 80221324 0021DF04  4B FA 7A BD */	bl func_801C8DE0
/* 80221328 0021DF08  7F 83 E3 78 */	mr r3, r28
/* 8022132C 0021DF0C  4B FA 7A DD */	bl func_801C8E08
lbl_80221330:
/* 80221330 0021DF10  3B DE 00 02 */	addi r30, r30, 2
lbl_80221334:
/* 80221334 0021DF14  A8 9E 00 00 */	lha r4, 0(r30)
/* 80221338 0021DF18  2C 04 FF FF */	cmpwi r4, -1
/* 8022133C 0021DF1C  40 82 FF 84 */	bne lbl_802212C0
/* 80221340 0021DF20  BB 61 00 14 */	lmw r27, 0x14(r1)
/* 80221344 0021DF24  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80221348 0021DF28  38 21 00 28 */	addi r1, r1, 0x28
/* 8022134C 0021DF2C  7C 08 03 A6 */	mtlr r0
/* 80221350 0021DF30  4E 80 00 20 */	blr
.global lbl_80221354
lbl_80221354:
/* 80221354 0021DF34  38 60 00 00 */	li r3, 0
/* 80221358 0021DF38  4E 80 00 20 */	blr
.global lbl_8022135C
lbl_8022135C:
/* 8022135C 0021DF3C  38 60 00 01 */	li r3, 1
/* 80221360 0021DF40  4E 80 00 20 */	blr

.section .sdata2
    .balign 8
.global lbl_804DBCB8
lbl_804DBCB8:
    .4byte 0x00000000
.global lbl_804DBCBC
lbl_804DBCBC:
    .4byte 0x3F800000
.global lbl_804DBCC0
lbl_804DBCC0:
    .4byte 0xBF800000
.global lbl_804DBCC4
lbl_804DBCC4:
    .4byte 0x40800000
