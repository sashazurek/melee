.include "macros.inc"

.section .text  # 0x80005940 - 0x803B7240

.global func_8021EF38
func_8021EF38:
/* 8021EF38 0021BB18  4E 80 00 20 */	blr 
.global lbl_8021EF3C
lbl_8021EF3C:
/* 8021EF3C 0021BB1C  7C 08 02 A6 */	mflr r0
/* 8021EF40 0021BB20  90 01 00 04 */	stw r0, 4(r1)
/* 8021EF44 0021BB24  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021EF48 0021BB28  4B FA 5A B1 */	bl func_801C49F8
/* 8021EF4C 0021BB2C  3C 80 80 4A */	lis r4, stage_info@ha
/* 8021EF50 0021BB30  90 6D B4 50 */	stw r3, lbl_804D6AF0@sda21(r13)
/* 8021EF54 0021BB34  38 64 E6 C8 */	addi r3, r4, stage_info@l
/* 8021EF58 0021BB38  38 A3 00 8C */	addi r5, r3, 0x8c
/* 8021EF5C 0021BB3C  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 8021EF60 0021BB40  38 60 00 00 */	li r3, 0
/* 8021EF64 0021BB44  50 60 1F 38 */	rlwimi r0, r3, 3, 0x1c, 0x1c
/* 8021EF68 0021BB48  98 05 00 00 */	stb r0, 0(r5)
/* 8021EF6C 0021BB4C  38 80 00 01 */	li r4, 1
/* 8021EF70 0021BB50  38 60 00 00 */	li r3, 0
/* 8021EF74 0021BB54  88 05 00 00 */	lbz r0, 0(r5)
/* 8021EF78 0021BB58  50 80 17 7A */	rlwimi r0, r4, 2, 0x1d, 0x1d
/* 8021EF7C 0021BB5C  98 05 00 00 */	stb r0, 0(r5)
/* 8021EF80 0021BB60  48 00 00 6D */	bl func_8021EFEC
/* 8021EF84 0021BB64  38 60 00 01 */	li r3, 1
/* 8021EF88 0021BB68  48 00 00 65 */	bl func_8021EFEC
/* 8021EF8C 0021BB6C  38 60 00 03 */	li r3, 3
/* 8021EF90 0021BB70  48 00 00 5D */	bl func_8021EFEC
/* 8021EF94 0021BB74  4B FA 4A 2D */	bl func_801C39C0
/* 8021EF98 0021BB78  4B FA 4C 1D */	bl func_801C3BB4
/* 8021EF9C 0021BB7C  48 00 5B CD */	bl get_blast_zone_top_offset
/* 8021EFA0 0021BB80  C0 02 C2 B8 */	lfs f0, lbl_804DBC98@sda21(r2)
/* 8021EFA4 0021BB84  EC 20 00 72 */	fmuls f1, f0, f1
/* 8021EFA8 0021BB88  4B FA 49 D9 */	bl func_801C3980
/* 8021EFAC 0021BB8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021EFB0 0021BB90  38 21 00 08 */	addi r1, r1, 8
/* 8021EFB4 0021BB94  7C 08 03 A6 */	mtlr r0
/* 8021EFB8 0021BB98  4E 80 00 20 */	blr 
.global lbl_8021EFBC
lbl_8021EFBC:
/* 8021EFBC 0021BB9C  4E 80 00 20 */	blr 
.global lbl_8021EFC0
lbl_8021EFC0:
/* 8021EFC0 0021BBA0  7C 08 02 A6 */	mflr r0
/* 8021EFC4 0021BBA4  38 60 00 00 */	li r3, 0
/* 8021EFC8 0021BBA8  90 01 00 04 */	stw r0, 4(r1)
/* 8021EFCC 0021BBAC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021EFD0 0021BBB0  4B FA BE 35 */	bl func_801CAE04
/* 8021EFD4 0021BBB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021EFD8 0021BBB8  38 21 00 08 */	addi r1, r1, 8
/* 8021EFDC 0021BBBC  7C 08 03 A6 */	mtlr r0
/* 8021EFE0 0021BBC0  4E 80 00 20 */	blr 
.global lbl_8021EFE4
lbl_8021EFE4:
/* 8021EFE4 0021BBC4  38 60 00 00 */	li r3, 0
/* 8021EFE8 0021BBC8  4E 80 00 20 */	blr 

.global func_8021EFEC
func_8021EFEC:
/* 8021EFEC 0021BBCC  7C 08 02 A6 */	mflr r0
/* 8021EFF0 0021BBD0  90 01 00 04 */	stw r0, 4(r1)
/* 8021EFF4 0021BBD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021EFF8 0021BBD8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021EFFC 0021BBDC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021F000 0021BBE0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021F004 0021BBE4  93 81 00 10 */	stw r28, 0x10(r1)
/* 8021F008 0021BBE8  3B 83 00 00 */	addi r28, r3, 0
/* 8021F00C 0021BBEC  1C 1C 00 14 */	mulli r0, r28, 0x14
/* 8021F010 0021BBF0  3C 60 80 3F */	lis r3, lbl_803E83B8@ha
/* 8021F014 0021BBF4  3B E3 83 B8 */	addi r31, r3, lbl_803E83B8@l
/* 8021F018 0021BBF8  7F BF 02 14 */	add r29, r31, r0
/* 8021F01C 0021BBFC  38 7C 00 00 */	addi r3, r28, 0
/* 8021F020 0021BC00  3B BD 00 9C */	addi r29, r29, 0x9c
/* 8021F024 0021BC04  4B FA 24 AD */	bl func_801C14D0
/* 8021F028 0021BC08  7C 7E 1B 79 */	or. r30, r3, r3
/* 8021F02C 0021BC0C  41 82 00 70 */	beq lbl_8021F09C
/* 8021F030 0021BC10  83 FE 00 2C */	lwz r31, 0x2c(r30)
/* 8021F034 0021BC14  38 00 00 00 */	li r0, 0
/* 8021F038 0021BC18  3C 60 80 1C */	lis r3, func_801C5DB0@ha
/* 8021F03C 0021BC1C  90 1F 00 08 */	stw r0, 8(r31)
/* 8021F040 0021BC20  38 83 5D B0 */	addi r4, r3, func_801C5DB0@l
/* 8021F044 0021BC24  38 7E 00 00 */	addi r3, r30, 0
/* 8021F048 0021BC28  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8021F04C 0021BC2C  38 A0 00 03 */	li r5, 3
/* 8021F050 0021BC30  38 C0 00 00 */	li r6, 0
/* 8021F054 0021BC34  48 17 16 49 */	bl GObj_SetupGXLink
/* 8021F058 0021BC38  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8021F05C 0021BC3C  28 00 00 00 */	cmplwi r0, 0
/* 8021F060 0021BC40  41 82 00 08 */	beq lbl_8021F068
/* 8021F064 0021BC44  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_8021F068:
/* 8021F068 0021BC48  81 9D 00 00 */	lwz r12, 0(r29)
/* 8021F06C 0021BC4C  28 0C 00 00 */	cmplwi r12, 0
/* 8021F070 0021BC50  41 82 00 10 */	beq lbl_8021F080
/* 8021F074 0021BC54  7D 88 03 A6 */	mtlr r12
/* 8021F078 0021BC58  38 7E 00 00 */	addi r3, r30, 0
/* 8021F07C 0021BC5C  4E 80 00 21 */	blrl 
lbl_8021F080:
/* 8021F080 0021BC60  80 9D 00 08 */	lwz r4, 8(r29)
/* 8021F084 0021BC64  28 04 00 00 */	cmplwi r4, 0
/* 8021F088 0021BC68  41 82 00 2C */	beq lbl_8021F0B4
/* 8021F08C 0021BC6C  38 7E 00 00 */	addi r3, r30, 0
/* 8021F090 0021BC70  38 A0 00 04 */	li r5, 4
/* 8021F094 0021BC74  48 17 0C C1 */	bl func_8038FD54
/* 8021F098 0021BC78  48 00 00 1C */	b lbl_8021F0B4
lbl_8021F09C:
/* 8021F09C 0021BC7C  38 DC 00 00 */	addi r6, r28, 0
/* 8021F0A0 0021BC80  4C C6 31 82 */	crclr 6
/* 8021F0A4 0021BC84  38 7F 01 40 */	addi r3, r31, 0x140
/* 8021F0A8 0021BC88  38 9F 01 64 */	addi r4, r31, 0x164
/* 8021F0AC 0021BC8C  38 A0 01 11 */	li r5, 0x111
/* 8021F0B0 0021BC90  48 12 65 F9 */	bl OSReport
lbl_8021F0B4:
/* 8021F0B4 0021BC94  7F C3 F3 78 */	mr r3, r30
/* 8021F0B8 0021BC98  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021F0BC 0021BC9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021F0C0 0021BCA0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021F0C4 0021BCA4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021F0C8 0021BCA8  83 81 00 10 */	lwz r28, 0x10(r1)
/* 8021F0CC 0021BCAC  38 21 00 20 */	addi r1, r1, 0x20
/* 8021F0D0 0021BCB0  7C 08 03 A6 */	mtlr r0
/* 8021F0D4 0021BCB4  4E 80 00 20 */	blr 
.global lbl_8021F0D8
lbl_8021F0D8:
/* 8021F0D8 0021BCB8  7C 08 02 A6 */	mflr r0
/* 8021F0DC 0021BCBC  38 A0 00 00 */	li r5, 0
/* 8021F0E0 0021BCC0  90 01 00 04 */	stw r0, 4(r1)
/* 8021F0E4 0021BCC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8021F0E8 0021BCC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8021F0EC 0021BCCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8021F0F0 0021BCD0  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8021F0F4 0021BCD4  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8021F0F8 0021BCD8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8021F0FC 0021BCDC  4B FA 90 3D */	bl func_801C8138
/* 8021F100 0021BCE0  3B A0 00 00 */	li r29, 0
/* 8021F104 0021BCE4  3C 60 80 47 */	lis r3, lbl_80473A18@ha
/* 8021F108 0021BCE8  57 A0 08 3C */	slwi r0, r29, 1
/* 8021F10C 0021BCEC  3B CD 93 38 */	addi r30, r13, lbl_804D49D8@sda21
/* 8021F110 0021BCF0  3B E3 3A 18 */	addi r31, r3, lbl_80473A18@l
/* 8021F114 0021BCF4  7F DE 02 14 */	add r30, r30, r0
/* 8021F118 0021BCF8  48 00 00 2C */	b lbl_8021F144
lbl_8021F11C:
/* 8021F11C 0021BCFC  88 1F 00 90 */	lbz r0, 0x90(r31)
/* 8021F120 0021BD00  2C 00 00 00 */	cmpwi r0, 0
/* 8021F124 0021BD04  41 82 00 14 */	beq lbl_8021F138
/* 8021F128 0021BD08  A8 9E 00 00 */	lha r4, 0(r30)
/* 8021F12C 0021BD0C  38 BD 00 00 */	addi r5, r29, 0
/* 8021F130 0021BD10  38 60 00 08 */	li r3, 8
/* 8021F134 0021BD14  48 00 06 69 */	bl func_8021F79C
lbl_8021F138:
/* 8021F138 0021BD18  3B FF 00 01 */	addi r31, r31, 1
/* 8021F13C 0021BD1C  3B DE 00 02 */	addi r30, r30, 2
/* 8021F140 0021BD20  3B BD 00 01 */	addi r29, r29, 1
lbl_8021F144:
/* 8021F144 0021BD24  80 6D B4 50 */	lwz r3, lbl_804D6AF0@sda21(r13)
/* 8021F148 0021BD28  80 03 00 00 */	lwz r0, 0(r3)
/* 8021F14C 0021BD2C  7C 1D 00 00 */	cmpw r29, r0
/* 8021F150 0021BD30  41 80 FF CC */	blt lbl_8021F11C
/* 8021F154 0021BD34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8021F158 0021BD38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8021F15C 0021BD3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8021F160 0021BD40  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8021F164 0021BD44  38 21 00 20 */	addi r1, r1, 0x20
/* 8021F168 0021BD48  7C 08 03 A6 */	mtlr r0
/* 8021F16C 0021BD4C  4E 80 00 20 */	blr 
.global lbl_8021F170
lbl_8021F170:
/* 8021F170 0021BD50  38 60 00 00 */	li r3, 0
/* 8021F174 0021BD54  4E 80 00 20 */	blr 
.global lbl_8021F178
lbl_8021F178:
/* 8021F178 0021BD58  4E 80 00 20 */	blr 
.global lbl_8021F17C
lbl_8021F17C:
/* 8021F17C 0021BD5C  4E 80 00 20 */	blr 
.global lbl_8021F180
lbl_8021F180:
/* 8021F180 0021BD60  7C 08 02 A6 */	mflr r0
/* 8021F184 0021BD64  38 A0 00 00 */	li r5, 0
/* 8021F188 0021BD68  90 01 00 04 */	stw r0, 4(r1)
/* 8021F18C 0021BD6C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8021F190 0021BD70  BF 41 00 A8 */	stmw r26, 0xa8(r1)
/* 8021F194 0021BD74  7C 7D 1B 78 */	mr r29, r3
/* 8021F198 0021BD78  83 C3 00 2C */	lwz r30, 0x2c(r3)
/* 8021F19C 0021BD7C  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 8021F1A0 0021BD80  4B FA 8F 99 */	bl func_801C8138
/* 8021F1A4 0021BD84  80 6D B4 50 */	lwz r3, lbl_804D6AF0@sda21(r13)
/* 8021F1A8 0021BD88  3C 80 80 47 */	lis r4, lbl_80473A18@ha
/* 8021F1AC 0021BD8C  38 84 3A 18 */	addi r4, r4, lbl_80473A18@l
/* 8021F1B0 0021BD90  88 84 00 94 */	lbz r4, 0x94(r4)
/* 8021F1B4 0021BD94  80 63 00 04 */	lwz r3, 4(r3)
/* 8021F1B8 0021BD98  7C 04 1B D6 */	divw r0, r4, r3
/* 8021F1BC 0021BD9C  7C 00 19 D6 */	mullw r0, r0, r3
/* 8021F1C0 0021BDA0  7C 00 20 51 */	subf. r0, r0, r4
/* 8021F1C4 0021BDA4  40 82 00 5C */	bne lbl_8021F220
/* 8021F1C8 0021BDA8  3C 60 80 3C */	lis r3, lbl_803B84A8@ha
/* 8021F1CC 0021BDAC  38 C3 84 A8 */	addi r6, r3, lbl_803B84A8@l
/* 8021F1D0 0021BDB0  80 A6 00 00 */	lwz r5, 0(r6)
/* 8021F1D4 0021BDB4  38 81 00 94 */	addi r4, r1, 0x94
/* 8021F1D8 0021BDB8  80 06 00 04 */	lwz r0, 4(r6)
/* 8021F1DC 0021BDBC  38 60 00 DC */	li r3, 0xdc
/* 8021F1E0 0021BDC0  90 A1 00 94 */	stw r5, 0x94(r1)
/* 8021F1E4 0021BDC4  90 01 00 98 */	stw r0, 0x98(r1)
/* 8021F1E8 0021BDC8  80 06 00 08 */	lwz r0, 8(r6)
/* 8021F1EC 0021BDCC  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8021F1F0 0021BDD0  4B FA 3B 35 */	bl func_801C2D24
/* 8021F1F4 0021BDD4  4B FA 66 4D */	bl func_801C5840
/* 8021F1F8 0021BDD8  3B 63 00 00 */	addi r27, r3, 0
/* 8021F1FC 0021BDDC  2C 1B FF FF */	cmpwi r27, -1
/* 8021F200 0021BDE0  41 82 00 20 */	beq lbl_8021F220
/* 8021F204 0021BDE4  38 BB 00 00 */	addi r5, r27, 0
/* 8021F208 0021BDE8  38 81 00 94 */	addi r4, r1, 0x94
/* 8021F20C 0021BDEC  38 60 00 00 */	li r3, 0
/* 8021F210 0021BDF0  38 C0 00 00 */	li r6, 0
/* 8021F214 0021BDF4  48 0D 2E 81 */	bl func_802F2094
/* 8021F218 0021BDF8  7F 63 DB 78 */	mr r3, r27
/* 8021F21C 0021BDFC  48 0E 58 3D */	bl func_80304A58
lbl_8021F220:
/* 8021F220 0021BE00  3C 60 80 47 */	lis r3, lbl_80473A18@ha
/* 8021F224 0021BE04  38 83 3A 18 */	addi r4, r3, lbl_80473A18@l
/* 8021F228 0021BE08  38 A4 00 95 */	addi r5, r4, 0x95
/* 8021F22C 0021BE0C  88 64 00 95 */	lbz r3, 0x95(r4)
/* 8021F230 0021BE10  3B E0 00 00 */	li r31, 0
/* 8021F234 0021BE14  2C 03 00 00 */	cmpwi r3, 0
/* 8021F238 0021BE18  40 81 00 A4 */	ble lbl_8021F2DC
/* 8021F23C 0021BE1C  2C 03 00 08 */	cmpwi r3, 8
/* 8021F240 0021BE20  38 63 FF F8 */	addi r3, r3, -8
/* 8021F244 0021BE24  40 81 01 A8 */	ble lbl_8021F3EC
/* 8021F248 0021BE28  38 03 00 07 */	addi r0, r3, 7
/* 8021F24C 0021BE2C  54 00 E8 FE */	srwi r0, r0, 3
/* 8021F250 0021BE30  2C 03 00 00 */	cmpwi r3, 0
/* 8021F254 0021BE34  7C 09 03 A6 */	mtctr r0
/* 8021F258 0021BE38  38 61 00 90 */	addi r3, r1, 0x90
/* 8021F25C 0021BE3C  40 81 01 90 */	ble lbl_8021F3EC
lbl_8021F260:
/* 8021F260 0021BE40  88 04 00 96 */	lbz r0, 0x96(r4)
/* 8021F264 0021BE44  3B FF 00 08 */	addi r31, r31, 8
/* 8021F268 0021BE48  98 03 00 00 */	stb r0, 0(r3)
/* 8021F26C 0021BE4C  88 04 00 97 */	lbz r0, 0x97(r4)
/* 8021F270 0021BE50  98 03 00 01 */	stb r0, 1(r3)
/* 8021F274 0021BE54  88 04 00 98 */	lbz r0, 0x98(r4)
/* 8021F278 0021BE58  98 03 00 02 */	stb r0, 2(r3)
/* 8021F27C 0021BE5C  88 04 00 99 */	lbz r0, 0x99(r4)
/* 8021F280 0021BE60  98 03 00 03 */	stb r0, 3(r3)
/* 8021F284 0021BE64  88 04 00 9A */	lbz r0, 0x9a(r4)
/* 8021F288 0021BE68  98 03 00 04 */	stb r0, 4(r3)
/* 8021F28C 0021BE6C  88 04 00 9B */	lbz r0, 0x9b(r4)
/* 8021F290 0021BE70  98 03 00 05 */	stb r0, 5(r3)
/* 8021F294 0021BE74  88 04 00 9C */	lbz r0, 0x9c(r4)
/* 8021F298 0021BE78  98 03 00 06 */	stb r0, 6(r3)
/* 8021F29C 0021BE7C  88 04 00 9D */	lbz r0, 0x9d(r4)
/* 8021F2A0 0021BE80  38 84 00 08 */	addi r4, r4, 8
/* 8021F2A4 0021BE84  98 03 00 07 */	stb r0, 7(r3)
/* 8021F2A8 0021BE88  38 63 00 08 */	addi r3, r3, 8
/* 8021F2AC 0021BE8C  42 00 FF B4 */	bdnz lbl_8021F260
/* 8021F2B0 0021BE90  48 00 01 3C */	b lbl_8021F3EC
lbl_8021F2B4:
/* 8021F2B4 0021BE94  7C 1F 28 50 */	subf r0, r31, r5
/* 8021F2B8 0021BE98  7C 1F 28 00 */	cmpw r31, r5
/* 8021F2BC 0021BE9C  7C 09 03 A6 */	mtctr r0
/* 8021F2C0 0021BEA0  40 80 00 1C */	bge lbl_8021F2DC
lbl_8021F2C4:
/* 8021F2C4 0021BEA4  88 03 00 96 */	lbz r0, 0x96(r3)
/* 8021F2C8 0021BEA8  38 63 00 01 */	addi r3, r3, 1
/* 8021F2CC 0021BEAC  3B FF 00 01 */	addi r31, r31, 1
/* 8021F2D0 0021BEB0  98 04 00 00 */	stb r0, 0(r4)
/* 8021F2D4 0021BEB4  38 84 00 01 */	addi r4, r4, 1
/* 8021F2D8 0021BEB8  42 00 FF EC */	bdnz lbl_8021F2C4
lbl_8021F2DC:
/* 8021F2DC 0021BEBC  38 7D 00 00 */	addi r3, r29, 0
/* 8021F2E0 0021BEC0  38 80 00 3A */	li r4, 0x3a
/* 8021F2E4 0021BEC4  4B FA 4C C1 */	bl func_801C3FA4
/* 8021F2E8 0021BEC8  90 61 00 84 */	stw r3, 0x84(r1)
/* 8021F2EC 0021BECC  38 7D 00 00 */	addi r3, r29, 0
/* 8021F2F0 0021BED0  38 80 00 3B */	li r4, 0x3b
/* 8021F2F4 0021BED4  4B FA 4C B1 */	bl func_801C3FA4
/* 8021F2F8 0021BED8  90 61 00 88 */	stw r3, 0x88(r1)
/* 8021F2FC 0021BEDC  38 7D 00 00 */	addi r3, r29, 0
/* 8021F300 0021BEE0  38 80 00 3C */	li r4, 0x3c
/* 8021F304 0021BEE4  4B FA 4C A1 */	bl func_801C3FA4
/* 8021F308 0021BEE8  3B 40 00 00 */	li r26, 0
/* 8021F30C 0021BEEC  90 61 00 8C */	stw r3, 0x8c(r1)
/* 8021F310 0021BEF0  57 40 10 3A */	slwi r0, r26, 2
/* 8021F314 0021BEF4  3B 81 00 84 */	addi r28, r1, 0x84
/* 8021F318 0021BEF8  7F 9C 02 14 */	add r28, r28, r0
/* 8021F31C 0021BEFC  3B 61 00 90 */	addi r27, r1, 0x90
/* 8021F320 0021BF00  48 00 00 20 */	b lbl_8021F340
lbl_8021F324:
/* 8021F324 0021BF04  88 7B 00 00 */	lbz r3, 0(r27)
/* 8021F328 0021BF08  48 00 03 E5 */	bl func_8021F70C
/* 8021F32C 0021BF0C  80 9C 00 00 */	lwz r4, 0(r28)
/* 8021F330 0021BF10  48 00 01 B9 */	bl func_8021F4E8
/* 8021F334 0021BF14  3B 9C 00 04 */	addi r28, r28, 4
/* 8021F338 0021BF18  3B 7B 00 01 */	addi r27, r27, 1
/* 8021F33C 0021BF1C  3B 5A 00 01 */	addi r26, r26, 1
lbl_8021F340:
/* 8021F340 0021BF20  7C 1A F8 00 */	cmpw r26, r31
/* 8021F344 0021BF24  41 80 FF E0 */	blt lbl_8021F324
/* 8021F348 0021BF28  3B 40 00 00 */	li r26, 0
/* 8021F34C 0021BF2C  3C 60 80 3F */	lis r3, lbl_803E83B8@ha
/* 8021F350 0021BF30  57 44 08 3C */	slwi r4, r26, 1
/* 8021F354 0021BF34  38 03 83 B8 */	addi r0, r3, lbl_803E83B8@l
/* 8021F358 0021BF38  7F 60 22 14 */	add r27, r0, r4
/* 8021F35C 0021BF3C  3B 81 00 18 */	addi r28, r1, 0x18
lbl_8021F360:
/* 8021F360 0021BF40  7F A3 EB 78 */	mr r3, r29
/* 8021F364 0021BF44  A8 9B 00 00 */	lha r4, 0(r27)
/* 8021F368 0021BF48  4B FA 4C 3D */	bl func_801C3FA4
/* 8021F36C 0021BF4C  3B 5A 00 01 */	addi r26, r26, 1
/* 8021F370 0021BF50  90 7C 00 00 */	stw r3, 0(r28)
/* 8021F374 0021BF54  28 1A 00 1A */	cmplwi r26, 0x1a
/* 8021F378 0021BF58  3B 7B 00 02 */	addi r27, r27, 2
/* 8021F37C 0021BF5C  3B 9C 00 04 */	addi r28, r28, 4
/* 8021F380 0021BF60  41 80 FF E0 */	blt lbl_8021F360
/* 8021F384 0021BF64  3B A0 00 00 */	li r29, 0
/* 8021F388 0021BF68  3C 60 80 47 */	lis r3, lbl_80473A18@ha
/* 8021F38C 0021BF6C  57 A0 10 3A */	slwi r0, r29, 2
/* 8021F390 0021BF70  3B 81 00 18 */	addi r28, r1, 0x18
/* 8021F394 0021BF74  3B 63 3A 18 */	addi r27, r3, lbl_80473A18@l
/* 8021F398 0021BF78  7F 9C 02 14 */	add r28, r28, r0
lbl_8021F39C:
/* 8021F39C 0021BF7C  88 1B 00 76 */	lbz r0, 0x76(r27)
/* 8021F3A0 0021BF80  2C 00 00 21 */	cmpwi r0, 0x21
/* 8021F3A4 0021BF84  7C 03 03 78 */	mr r3, r0
/* 8021F3A8 0021BF88  41 82 00 10 */	beq lbl_8021F3B8
/* 8021F3AC 0021BF8C  48 00 03 61 */	bl func_8021F70C
/* 8021F3B0 0021BF90  80 9C 00 00 */	lwz r4, 0(r28)
/* 8021F3B4 0021BF94  48 00 02 75 */	bl func_8021F628
lbl_8021F3B8:
/* 8021F3B8 0021BF98  3B BD 00 01 */	addi r29, r29, 1
/* 8021F3BC 0021BF9C  28 1D 00 1A */	cmplwi r29, 0x1a
/* 8021F3C0 0021BFA0  3B 7B 00 01 */	addi r27, r27, 1
/* 8021F3C4 0021BFA4  3B 9C 00 04 */	addi r28, r28, 4
/* 8021F3C8 0021BFA8  41 80 FF D4 */	blt lbl_8021F39C
/* 8021F3CC 0021BFAC  3C 60 80 22 */	lis r3, lbl_8021F4C0@ha
/* 8021F3D0 0021BFB0  38 A3 F4 C0 */	addi r5, r3, lbl_8021F4C0@l
/* 8021F3D4 0021BFB4  38 9E 00 00 */	addi r4, r30, 0
/* 8021F3D8 0021BFB8  38 60 00 00 */	li r3, 0
/* 8021F3DC 0021BFBC  4B E3 8C ED */	bl func_800580C8
/* 8021F3E0 0021BFC0  38 00 00 00 */	li r0, 0
/* 8021F3E4 0021BFC4  90 1E 00 C4 */	stw r0, 0xc4(r30)
/* 8021F3E8 0021BFC8  48 00 00 20 */	b lbl_8021F408
lbl_8021F3EC:
/* 8021F3EC 0021BFCC  3C 60 80 47 */	lis r3, lbl_80473A18@ha
/* 8021F3F0 0021BFD0  88 A5 00 00 */	lbz r5, 0(r5)
/* 8021F3F4 0021BFD4  38 03 3A 18 */	addi r0, r3, lbl_80473A18@l
/* 8021F3F8 0021BFD8  38 81 00 90 */	addi r4, r1, 0x90
/* 8021F3FC 0021BFDC  7C 60 FA 14 */	add r3, r0, r31
/* 8021F400 0021BFE0  7C 84 FA 14 */	add r4, r4, r31
/* 8021F404 0021BFE4  4B FF FE B0 */	b lbl_8021F2B4
lbl_8021F408:
/* 8021F408 0021BFE8  BB 41 00 A8 */	lmw r26, 0xa8(r1)
/* 8021F40C 0021BFEC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8021F410 0021BFF0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8021F414 0021BFF4  7C 08 03 A6 */	mtlr r0
/* 8021F418 0021BFF8  4E 80 00 20 */	blr 
.global lbl_8021F41C
lbl_8021F41C:
/* 8021F41C 0021BFFC  38 60 00 00 */	li r3, 0
/* 8021F420 0021C000  4E 80 00 20 */	blr 
lbl_8021F424:
/* 8021F424 0021C004  7C 08 02 A6 */	mflr r0
/* 8021F428 0021C008  38 60 00 01 */	li r3, 1
/* 8021F42C 0021C00C  90 01 00 04 */	stw r0, 4(r1)
/* 8021F430 0021C010  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021F434 0021C014  4B FA 37 71 */	bl func_801C2BA4
/* 8021F438 0021C018  28 03 00 00 */	cmplwi r3, 0
/* 8021F43C 0021C01C  41 82 00 24 */	beq lbl_8021F460
/* 8021F440 0021C020  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8021F444 0021C024  28 03 00 00 */	cmplwi r3, 0
/* 8021F448 0021C028  41 82 00 18 */	beq lbl_8021F460
/* 8021F44C 0021C02C  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8021F450 0021C030  2C 00 00 00 */	cmpwi r0, 0
/* 8021F454 0021C034  41 82 00 0C */	beq lbl_8021F460
/* 8021F458 0021C038  38 60 00 01 */	li r3, 1
/* 8021F45C 0021C03C  48 00 00 08 */	b lbl_8021F464
lbl_8021F460:
/* 8021F460 0021C040  38 60 00 00 */	li r3, 0
lbl_8021F464:
/* 8021F464 0021C044  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021F468 0021C048  38 21 00 08 */	addi r1, r1, 8
/* 8021F46C 0021C04C  7C 08 03 A6 */	mtlr r0
/* 8021F470 0021C050  4E 80 00 20 */	blr 
.global lbl_8021F474
lbl_8021F474:
/* 8021F474 0021C054  7C 08 02 A6 */	mflr r0
/* 8021F478 0021C058  3C 80 80 22 */	lis r4, lbl_8021F424@ha
/* 8021F47C 0021C05C  90 01 00 04 */	stw r0, 4(r1)
/* 8021F480 0021C060  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8021F484 0021C064  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8021F488 0021C068  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 8021F48C 0021C06C  38 64 F4 24 */	addi r3, r4, lbl_8021F424@l
/* 8021F490 0021C070  C0 22 C2 BC */	lfs f1, lbl_804DBC9C@sda21(r2)
/* 8021F494 0021C074  C0 42 C2 C0 */	lfs f2, lbl_804DBCA0@sda21(r2)
/* 8021F498 0021C078  4B FA 48 AD */	bl func_801C3D44
/* 8021F49C 0021C07C  4B DF 21 59 */	bl func_800115F4
/* 8021F4A0 0021C080  38 00 00 00 */	li r0, 0
/* 8021F4A4 0021C084  90 1F 00 C4 */	stw r0, 0xc4(r31)
/* 8021F4A8 0021C088  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8021F4AC 0021C08C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8021F4B0 0021C090  38 21 00 18 */	addi r1, r1, 0x18
/* 8021F4B4 0021C094  7C 08 03 A6 */	mtlr r0
/* 8021F4B8 0021C098  4E 80 00 20 */	blr 
.global lbl_8021F4BC
lbl_8021F4BC:
/* 8021F4BC 0021C09C  4E 80 00 20 */	blr 
lbl_8021F4C0:
/* 8021F4C0 0021C0A0  88 05 00 34 */	lbz r0, 0x34(r5)
/* 8021F4C4 0021C0A4  54 00 EF 3E */	rlwinm r0, r0, 0x1d, 0x1c, 0x1f
/* 8021F4C8 0021C0A8  2C 00 00 01 */	cmpwi r0, 1
/* 8021F4CC 0021C0AC  4C 82 00 20 */	bnelr 
/* 8021F4D0 0021C0B0  38 07 FF FF */	addi r0, r7, -1
/* 8021F4D4 0021C0B4  28 00 00 01 */	cmplwi r0, 1
/* 8021F4D8 0021C0B8  4D 81 00 20 */	bgtlr 
/* 8021F4DC 0021C0BC  38 00 00 01 */	li r0, 1
/* 8021F4E0 0021C0C0  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8021F4E4 0021C0C4  4E 80 00 20 */	blr 

.global func_8021F4E8
func_8021F4E8:
/* 8021F4E8 0021C0C8  7C 08 02 A6 */	mflr r0
/* 8021F4EC 0021C0CC  90 01 00 04 */	stw r0, 4(r1)
/* 8021F4F0 0021C0D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021F4F4 0021C0D4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021F4F8 0021C0D8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021F4FC 0021C0DC  3B C3 00 00 */	addi r30, r3, 0
/* 8021F500 0021C0E0  38 60 00 04 */	li r3, 4
/* 8021F504 0021C0E4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8021F508 0021C0E8  3B A4 00 00 */	addi r29, r4, 0
/* 8021F50C 0021C0EC  4B FF FA E1 */	bl func_8021EFEC
/* 8021F510 0021C0F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021F514 0021C0F4  40 82 00 18 */	bne lbl_8021F52C
/* 8021F518 0021C0F8  3C 60 80 3F */	lis r3, lbl_803E851C@ha
/* 8021F51C 0021C0FC  38 63 85 1C */	addi r3, r3, lbl_803E851C@l
/* 8021F520 0021C100  38 80 01 B8 */	li r4, 0x1b8
/* 8021F524 0021C104  38 AD 93 40 */	addi r5, r13, lbl_804D49E0@sda21
/* 8021F528 0021C108  48 16 8C F9 */	bl __assert
lbl_8021F52C:
/* 8021F52C 0021C10C  38 7F 00 00 */	addi r3, r31, 0
/* 8021F530 0021C110  38 80 00 04 */	li r4, 4
/* 8021F534 0021C114  38 A0 00 00 */	li r5, 0
/* 8021F538 0021C118  4B FA 8C 01 */	bl func_801C8138
/* 8021F53C 0021C11C  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 8021F540 0021C120  C8 22 C2 C8 */	lfd f1, lbl_804DBCA8@sda21(r2)
/* 8021F544 0021C124  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021F548 0021C128  3C 00 43 30 */	lis r0, 0x4330
/* 8021F54C 0021C12C  C0 42 C2 C4 */	lfs f2, lbl_804DBCA4@sda21(r2)
/* 8021F550 0021C130  7F E3 FB 78 */	mr r3, r31
/* 8021F554 0021C134  90 01 00 18 */	stw r0, 0x18(r1)
/* 8021F558 0021C138  38 80 00 00 */	li r4, 0
/* 8021F55C 0021C13C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8021F560 0021C140  38 A0 00 07 */	li r5, 7
/* 8021F564 0021C144  38 C0 00 00 */	li r6, 0
/* 8021F568 0021C148  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021F56C 0021C14C  4B FA 8A 8D */	bl func_801C7FF8
/* 8021F570 0021C150  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8021F574 0021C154  28 03 00 00 */	cmplwi r3, 0
/* 8021F578 0021C158  40 82 00 0C */	bne lbl_8021F584
/* 8021F57C 0021C15C  38 00 00 00 */	li r0, 0
/* 8021F580 0021C160  48 00 00 08 */	b lbl_8021F588
lbl_8021F584:
/* 8021F584 0021C164  80 03 00 10 */	lwz r0, 0x10(r3)
lbl_8021F588:
/* 8021F588 0021C168  7C 1E 03 78 */	mr r30, r0
/* 8021F58C 0021C16C  38 7E 00 00 */	addi r3, r30, 0
/* 8021F590 0021C170  38 9D 00 00 */	addi r4, r29, 0
/* 8021F594 0021C174  48 15 23 61 */	bl HSD_JObjReparent
/* 8021F598 0021C178  38 7E 00 00 */	addi r3, r30, 0
/* 8021F59C 0021C17C  38 80 00 10 */	li r4, 0x10
/* 8021F5A0 0021C180  48 15 29 FD */	bl HSD_JObjClearFlagsAll
/* 8021F5A4 0021C184  7F E3 FB 78 */	mr r3, r31
/* 8021F5A8 0021C188  4B FA 54 61 */	bl func_801C4A08
/* 8021F5AC 0021C18C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021F5B0 0021C190  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021F5B4 0021C194  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021F5B8 0021C198  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8021F5BC 0021C19C  38 21 00 30 */	addi r1, r1, 0x30
/* 8021F5C0 0021C1A0  7C 08 03 A6 */	mtlr r0
/* 8021F5C4 0021C1A4  4E 80 00 20 */	blr 
.global lbl_8021F5C8
lbl_8021F5C8:
/* 8021F5C8 0021C1A8  4E 80 00 20 */	blr 
.global lbl_8021F5CC
lbl_8021F5CC:
/* 8021F5CC 0021C1AC  38 60 00 00 */	li r3, 0
/* 8021F5D0 0021C1B0  4E 80 00 20 */	blr 
.global lbl_8021F5D4
lbl_8021F5D4:
/* 8021F5D4 0021C1B4  4E 80 00 20 */	blr 
.global lbl_8021F5D8
lbl_8021F5D8:
/* 8021F5D8 0021C1B8  4E 80 00 20 */	blr 
.global lbl_8021F5DC
lbl_8021F5DC:
/* 8021F5DC 0021C1BC  7C 08 02 A6 */	mflr r0
/* 8021F5E0 0021C1C0  38 80 00 00 */	li r4, 0
/* 8021F5E4 0021C1C4  90 01 00 04 */	stw r0, 4(r1)
/* 8021F5E8 0021C1C8  38 A0 00 00 */	li r5, 0
/* 8021F5EC 0021C1CC  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021F5F0 0021C1D0  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 8021F5F4 0021C1D4  88 06 00 10 */	lbz r0, 0x10(r6)
/* 8021F5F8 0021C1D8  50 80 2E B4 */	rlwimi r0, r4, 5, 0x1a, 0x1a
/* 8021F5FC 0021C1DC  98 06 00 10 */	stb r0, 0x10(r6)
/* 8021F600 0021C1E0  80 86 00 14 */	lwz r4, 0x14(r6)
/* 8021F604 0021C1E4  4B FA 8B 35 */	bl func_801C8138
/* 8021F608 0021C1E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021F60C 0021C1EC  38 21 00 08 */	addi r1, r1, 8
/* 8021F610 0021C1F0  7C 08 03 A6 */	mtlr r0
/* 8021F614 0021C1F4  4E 80 00 20 */	blr 
.global lbl_8021F618
lbl_8021F618:
/* 8021F618 0021C1F8  38 60 00 00 */	li r3, 0
/* 8021F61C 0021C1FC  4E 80 00 20 */	blr 
.global lbl_8021F620
lbl_8021F620:
/* 8021F620 0021C200  4E 80 00 20 */	blr 
.global lbl_8021F624
lbl_8021F624:
/* 8021F624 0021C204  4E 80 00 20 */	blr 

.global func_8021F628
func_8021F628:
/* 8021F628 0021C208  7C 08 02 A6 */	mflr r0
/* 8021F62C 0021C20C  90 01 00 04 */	stw r0, 4(r1)
/* 8021F630 0021C210  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8021F634 0021C214  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8021F638 0021C218  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8021F63C 0021C21C  3B C4 00 00 */	addi r30, r4, 0
/* 8021F640 0021C220  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8021F644 0021C224  3B A3 00 00 */	addi r29, r3, 0
/* 8021F648 0021C228  38 60 00 02 */	li r3, 2
/* 8021F64C 0021C22C  4B FF F9 A1 */	bl func_8021EFEC
/* 8021F650 0021C230  7C 7F 1B 79 */	or. r31, r3, r3
/* 8021F654 0021C234  40 82 00 18 */	bne lbl_8021F66C
/* 8021F658 0021C238  3C 60 80 3F */	lis r3, lbl_803E851C@ha
/* 8021F65C 0021C23C  38 63 85 1C */	addi r3, r3, lbl_803E851C@l
/* 8021F660 0021C240  38 80 02 01 */	li r4, 0x201
/* 8021F664 0021C244  38 AD 93 40 */	addi r5, r13, lbl_804D49E0@sda21
/* 8021F668 0021C248  48 16 8B B9 */	bl __assert
lbl_8021F66C:
/* 8021F66C 0021C24C  38 7F 00 00 */	addi r3, r31, 0
/* 8021F670 0021C250  38 80 00 02 */	li r4, 2
/* 8021F674 0021C254  38 A0 00 00 */	li r5, 0
/* 8021F678 0021C258  4B FA 8A C1 */	bl func_801C8138
/* 8021F67C 0021C25C  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 8021F680 0021C260  C8 22 C2 C8 */	lfd f1, lbl_804DBCA8@sda21(r2)
/* 8021F684 0021C264  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021F688 0021C268  3C 00 43 30 */	lis r0, 0x4330
/* 8021F68C 0021C26C  C0 42 C2 C4 */	lfs f2, lbl_804DBCA4@sda21(r2)
/* 8021F690 0021C270  7F E3 FB 78 */	mr r3, r31
/* 8021F694 0021C274  90 01 00 18 */	stw r0, 0x18(r1)
/* 8021F698 0021C278  38 80 00 00 */	li r4, 0
/* 8021F69C 0021C27C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8021F6A0 0021C280  38 A0 00 07 */	li r5, 7
/* 8021F6A4 0021C284  38 C0 00 00 */	li r6, 0
/* 8021F6A8 0021C288  EC 20 08 28 */	fsubs f1, f0, f1
/* 8021F6AC 0021C28C  4B FA 89 4D */	bl func_801C7FF8
/* 8021F6B0 0021C290  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 8021F6B4 0021C294  28 03 00 00 */	cmplwi r3, 0
/* 8021F6B8 0021C298  40 82 00 0C */	bne lbl_8021F6C4
/* 8021F6BC 0021C29C  38 00 00 00 */	li r0, 0
/* 8021F6C0 0021C2A0  48 00 00 08 */	b lbl_8021F6C8
lbl_8021F6C4:
/* 8021F6C4 0021C2A4  80 03 00 10 */	lwz r0, 0x10(r3)
lbl_8021F6C8:
/* 8021F6C8 0021C2A8  7C 03 03 78 */	mr r3, r0
/* 8021F6CC 0021C2AC  38 9E 00 00 */	addi r4, r30, 0
/* 8021F6D0 0021C2B0  48 15 22 25 */	bl HSD_JObjReparent
/* 8021F6D4 0021C2B4  7F E3 FB 78 */	mr r3, r31
/* 8021F6D8 0021C2B8  4B FA 53 31 */	bl func_801C4A08
/* 8021F6DC 0021C2BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8021F6E0 0021C2C0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8021F6E4 0021C2C4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8021F6E8 0021C2C8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 8021F6EC 0021C2CC  38 21 00 30 */	addi r1, r1, 0x30
/* 8021F6F0 0021C2D0  7C 08 03 A6 */	mtlr r0
/* 8021F6F4 0021C2D4  4E 80 00 20 */	blr 
.global lbl_8021F6F8
lbl_8021F6F8:
/* 8021F6F8 0021C2D8  4E 80 00 20 */	blr 
.global lbl_8021F6FC
lbl_8021F6FC:
/* 8021F6FC 0021C2DC  38 60 00 00 */	li r3, 0
/* 8021F700 0021C2E0  4E 80 00 20 */	blr 
.global lbl_8021F704
lbl_8021F704:
/* 8021F704 0021C2E4  4E 80 00 20 */	blr 
.global lbl_8021F708
lbl_8021F708:
/* 8021F708 0021C2E8  4E 80 00 20 */	blr 

.global func_8021F70C
func_8021F70C:
/* 8021F70C 0021C2EC  7C 08 02 A6 */	mflr r0
/* 8021F710 0021C2F0  3C 80 80 3F */	lis r4, lbl_803E83B8@ha
/* 8021F714 0021C2F4  90 01 00 04 */	stw r0, 4(r1)
/* 8021F718 0021C2F8  2C 03 00 13 */	cmpwi r3, 0x13
/* 8021F71C 0021C2FC  38 A4 83 B8 */	addi r5, r4, lbl_803E83B8@l
/* 8021F720 0021C300  94 21 FF F8 */	stwu r1, -8(r1)
/* 8021F724 0021C304  38 C0 00 00 */	li r6, 0
/* 8021F728 0021C308  40 82 00 5C */	bne lbl_8021F784
/* 8021F72C 0021C30C  38 60 00 12 */	li r3, 0x12
/* 8021F730 0021C310  48 00 00 54 */	b lbl_8021F784
/* 8021F734 0021C314  48 00 00 14 */	b lbl_8021F748
lbl_8021F738:
/* 8021F738 0021C318  7C 03 00 00 */	cmpw r3, r0
/* 8021F73C 0021C31C  41 82 00 18 */	beq lbl_8021F754
/* 8021F740 0021C320  38 84 00 04 */	addi r4, r4, 4
/* 8021F744 0021C324  38 C6 00 01 */	addi r6, r6, 1
lbl_8021F748:
/* 8021F748 0021C328  80 04 00 00 */	lwz r0, 0(r4)
/* 8021F74C 0021C32C  2C 00 FF FF */	cmpwi r0, -1
/* 8021F750 0021C330  40 82 FF E8 */	bne lbl_8021F738
lbl_8021F754:
/* 8021F754 0021C334  54 C0 10 3A */	slwi r0, r6, 2
/* 8021F758 0021C338  7C 85 02 14 */	add r4, r5, r0
/* 8021F75C 0021C33C  80 04 00 34 */	lwz r0, 0x34(r4)
/* 8021F760 0021C340  2C 00 FF FF */	cmpwi r0, -1
/* 8021F764 0021C344  40 82 00 18 */	bne lbl_8021F77C
/* 8021F768 0021C348  38 83 00 00 */	addi r4, r3, 0
/* 8021F76C 0021C34C  4C C6 31 82 */	crclr 6
/* 8021F770 0021C350  38 65 01 70 */	addi r3, r5, 0x170
/* 8021F774 0021C354  48 12 5F 35 */	bl OSReport
/* 8021F778 0021C358  38 C0 00 00 */	li r6, 0
lbl_8021F77C:
/* 8021F77C 0021C35C  7C C3 33 78 */	mr r3, r6
/* 8021F780 0021C360  48 00 00 0C */	b lbl_8021F78C
lbl_8021F784:
/* 8021F784 0021C364  38 85 00 34 */	addi r4, r5, 0x34
/* 8021F788 0021C368  4B FF FF C0 */	b lbl_8021F748
lbl_8021F78C:
/* 8021F78C 0021C36C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8021F790 0021C370  38 21 00 08 */	addi r1, r1, 8
/* 8021F794 0021C374  7C 08 03 A6 */	mtlr r0
/* 8021F798 0021C378  4E 80 00 20 */	blr 

.global func_8021F79C
func_8021F79C:
/* 8021F79C 0021C37C  7C 08 02 A6 */	mflr r0
/* 8021F7A0 0021C380  90 01 00 04 */	stw r0, 4(r1)
/* 8021F7A4 0021C384  94 21 FF B8 */	stwu r1, -0x48(r1)
/* 8021F7A8 0021C388  93 E1 00 44 */	stw r31, 0x44(r1)
/* 8021F7AC 0021C38C  93 C1 00 40 */	stw r30, 0x40(r1)
/* 8021F7B0 0021C390  3B C5 00 00 */	addi r30, r5, 0
/* 8021F7B4 0021C394  93 A1 00 3C */	stw r29, 0x3c(r1)
/* 8021F7B8 0021C398  3B A4 00 00 */	addi r29, r4, 0
/* 8021F7BC 0021C39C  93 81 00 38 */	stw r28, 0x38(r1)
/* 8021F7C0 0021C3A0  3B 83 00 00 */	addi r28, r3, 0
/* 8021F7C4 0021C3A4  38 60 00 00 */	li r3, 0
/* 8021F7C8 0021C3A8  4B FA 33 DD */	bl func_801C2BA4
/* 8021F7CC 0021C3AC  3B E3 00 00 */	addi r31, r3, 0
/* 8021F7D0 0021C3B0  38 9D 00 00 */	addi r4, r29, 0
/* 8021F7D4 0021C3B4  4B FA 47 D1 */	bl func_801C3FA4
/* 8021F7D8 0021C3B8  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8021F7DC 0021C3BC  38 00 00 00 */	li r0, 0
/* 8021F7E0 0021C3C0  38 C0 00 01 */	li r6, 1
/* 8021F7E4 0021C3C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8021F7E8 0021C3C8  38 A1 00 20 */	addi r5, r1, 0x20
/* 8021F7EC 0021C3CC  38 80 00 00 */	li r4, 0
/* 8021F7F0 0021C3D0  93 81 00 2C */	stw r28, 0x2c(r1)
/* 8021F7F4 0021C3D4  93 C1 00 30 */	stw r30, 0x30(r1)
/* 8021F7F8 0021C3D8  88 01 00 34 */	lbz r0, 0x34(r1)
/* 8021F7FC 0021C3DC  50 C0 3E 30 */	rlwimi r0, r6, 7, 0x18, 0x18
/* 8021F800 0021C3E0  98 01 00 34 */	stb r0, 0x34(r1)
/* 8021F804 0021C3E4  4B DE B9 C9 */	bl func_8000B1CC
/* 8021F808 0021C3E8  38 61 00 18 */	addi r3, r1, 0x18
/* 8021F80C 0021C3EC  48 04 C6 79 */	bl func_8026BE84
/* 8021F810 0021C3F0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8021F814 0021C3F4  83 E1 00 44 */	lwz r31, 0x44(r1)
/* 8021F818 0021C3F8  83 C1 00 40 */	lwz r30, 0x40(r1)
/* 8021F81C 0021C3FC  83 A1 00 3C */	lwz r29, 0x3c(r1)
/* 8021F820 0021C400  83 81 00 38 */	lwz r28, 0x38(r1)
/* 8021F824 0021C404  38 21 00 48 */	addi r1, r1, 0x48
/* 8021F828 0021C408  7C 08 03 A6 */	mtlr r0
/* 8021F82C 0021C40C  4E 80 00 20 */	blr 
.global lbl_8021F830
lbl_8021F830:
/* 8021F830 0021C410  38 60 00 00 */	li r3, 0
/* 8021F834 0021C414  4E 80 00 20 */	blr 
.global lbl_8021F838
lbl_8021F838:
/* 8021F838 0021C418  38 60 00 01 */	li r3, 1
/* 8021F83C 0021C41C  4E 80 00 20 */	blr 


.section .rodata

.global lbl_803B84A8
lbl_803B84A8:
    .4byte 0x00000000
    .4byte 0x42200000
    .4byte 0x00000000
    .4byte 0x00000000


.section .data

.global lbl_803E83B8
lbl_803E83B8:
    .4byte 0x001D001E
    .4byte 0x001F0020
    .4byte 0x00210022
    .4byte 0x00230024
    .4byte 0x00250026
    .4byte 0x00270028
    .4byte 0x0029002A
    .4byte 0x002B002C
    .4byte 0x002D002E
    .4byte 0x002F0030
    .4byte 0x00310032
    .4byte 0x00330034
    .4byte 0x00350036
    .4byte NULL
    .4byte 0x00000015
    .4byte 0x00000001
    .4byte 0x00000016
    .4byte 0x00000014
    .4byte 0x00000002
    .4byte 0x00000019
    .4byte 0x00000003
    .4byte 0x0000000E
    .4byte 0x00000004
    .4byte 0x00000005
    .4byte 0x00000007
    .4byte 0x00000006
    .4byte 0x00000008
    .4byte 0x00000009
    .4byte 0x0000000A
    .4byte 0x0000000B
    .4byte 0x00000018
    .4byte 0x0000000C
    .4byte 0x0000000D
    .4byte 0x0000000F
    .4byte 0x00000010
    .4byte 0x00000011
    .4byte 0x00000012
    .4byte 0x00000017
    .4byte 0xFFFFFFFF
.global lbl_803E8454
lbl_803E8454:
	.4byte lbl_8021F0D8
	.4byte lbl_8021F170
	.4byte lbl_8021F178
	.4byte lbl_8021F17C
    .4byte NULL
	.4byte lbl_8021F180
	.4byte lbl_8021F41C
	.4byte lbl_8021F474
	.4byte lbl_8021F4BC
    .4byte 0xC0000000
	.4byte lbl_8021F5C8
	.4byte lbl_8021F5CC
	.4byte lbl_8021F5D4
	.4byte lbl_8021F5D8
    .4byte NULL
	.4byte lbl_8021F5DC
	.4byte lbl_8021F618
	.4byte lbl_8021F620
	.4byte lbl_8021F624
    .4byte NULL
	.4byte lbl_8021F6F8
	.4byte lbl_8021F6FC
	.4byte lbl_8021F704
	.4byte lbl_8021F708
    .4byte NULL
.global lbl_803E84B8
lbl_803E84B8:
    .4byte 0x2F477248
    .4byte 0x652E6461
    .4byte 0x74000000
.global lbl_803E84C4
lbl_803E84C4:
    .4byte 0x00000042
    .4byte lbl_803E8454
    .4byte lbl_803E84B8
	.4byte lbl_8021EF3C
	.4byte func_8021EF38
	.4byte lbl_8021EFBC
	.4byte lbl_8021EFC0
	.4byte lbl_8021EFE4
	.4byte lbl_8021F830
	.4byte lbl_8021F838
    .4byte 0x00000001
    .4byte NULL
    .4byte NULL
    .4byte 0x25733A25
    .4byte 0x643A2063
    .4byte 0x6F756C64
    .4byte 0x6E207420
    .4byte 0x67657420
    .4byte 0x676F626A
    .4byte 0x2869643D
    .4byte 0x2564290A
    .4byte NULL
.global lbl_803E851C
lbl_803E851C:
    .asciz "grheal.c"
    .balign 4
    .asciz "*** Not found Next Player!(%d)\n"
    .balign 4


.section .sdata

.global lbl_804D49D8
lbl_804D49D8:
    .4byte 0x00070008
    .4byte 0x00090000
.global lbl_804D49E0
lbl_804D49E0:
    .asciz "gobj"
    .balign 4


.section .sbss

.global lbl_804D6AF0
lbl_804D6AF0:
	.skip 0x8


.section .sdata2

.global lbl_804DBC98
lbl_804DBC98:
	.4byte 0x40000000
.global lbl_804DBC9C
lbl_804DBC9C:
	.4byte 0x41200000
.global lbl_804DBCA0
lbl_804DBCA0:
	.4byte 0x41A00000
.global lbl_804DBCA4
lbl_804DBCA4:
	.4byte 0x00000000
.global lbl_804DBCA8
lbl_804DBCA8:
	.4byte 0x43300000
	.4byte 0x80000000
