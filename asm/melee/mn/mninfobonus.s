.include "macros.inc"

.section .text  # 0x802528F8 - 0x80253180

.global func_802528F8
func_802528F8:
/* 802528F8 0024F4D8  7C 08 02 A6 */	mflr r0
/* 802528FC 0024F4DC  3C 60 80 4A */	lis r3, lbl_804A09B0@ha
/* 80252900 0024F4E0  90 01 00 04 */	stw r0, 4(r1)
/* 80252904 0024F4E4  38 83 09 B0 */	addi r4, r3, lbl_804A09B0@l
/* 80252908 0024F4E8  3C 60 80 3F */	lis r3, lbl_803EFCE8@ha
/* 8025290C 0024F4EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80252910 0024F4F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80252914 0024F4F4  3B E3 FC E8 */	addi r31, r3, lbl_803EFCE8@l
/* 80252918 0024F4F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8025291C 0024F4FC  3B C0 00 00 */	li r30, 0
/* 80252920 0024F500  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80252924 0024F504  83 A4 00 00 */	lwz r29, 0(r4)
lbl_80252928:
/* 80252928 0024F508  80 1F 00 00 */	lwz r0, 0(r31)
/* 8025292C 0024F50C  2C 00 01 00 */	cmpwi r0, 0x100
/* 80252930 0024F510  7C 03 03 78 */	mr r3, r0
/* 80252934 0024F514  41 82 00 60 */	beq lbl_80252994
/* 80252938 0024F518  2C 1D 00 00 */	cmpwi r29, 0
/* 8025293C 0024F51C  41 82 00 2C */	beq lbl_80252968
/* 80252940 0024F520  88 0D B5 E0 */	lbz r0, lbl_804D6C80@sda21(r13)
/* 80252944 0024F524  28 00 00 00 */	cmplwi r0, 0
/* 80252948 0024F528  41 82 00 0C */	beq lbl_80252954
/* 8025294C 0024F52C  38 60 00 01 */	li r3, 1
/* 80252950 0024F530  48 00 00 08 */	b lbl_80252958
lbl_80252954:
/* 80252954 0024F534  4B F1 C7 CD */	bl func_8016F120
lbl_80252958:
/* 80252958 0024F538  2C 03 00 00 */	cmpwi r3, 0
/* 8025295C 0024F53C  41 82 00 30 */	beq lbl_8025298C
/* 80252960 0024F540  3B BD FF FF */	addi r29, r29, -1
/* 80252964 0024F544  48 00 00 28 */	b lbl_8025298C
lbl_80252968:
/* 80252968 0024F548  88 0D B5 E0 */	lbz r0, lbl_804D6C80@sda21(r13)
/* 8025296C 0024F54C  28 00 00 00 */	cmplwi r0, 0
/* 80252970 0024F550  41 82 00 0C */	beq lbl_8025297C
/* 80252974 0024F554  38 60 00 01 */	li r3, 1
/* 80252978 0024F558  48 00 00 08 */	b lbl_80252980
lbl_8025297C:
/* 8025297C 0024F55C  4B F1 C7 A5 */	bl func_8016F120
lbl_80252980:
/* 80252980 0024F560  2C 03 00 00 */	cmpwi r3, 0
/* 80252984 0024F564  41 82 00 08 */	beq lbl_8025298C
/* 80252988 0024F568  3B DE 00 01 */	addi r30, r30, 1
lbl_8025298C:
/* 8025298C 0024F56C  3B FF 00 04 */	addi r31, r31, 4
/* 80252990 0024F570  4B FF FF 98 */	b lbl_80252928
lbl_80252994:
/* 80252994 0024F574  7F C3 F3 78 */	mr r3, r30
/* 80252998 0024F578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025299C 0024F57C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802529A0 0024F580  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802529A4 0024F584  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 802529A8 0024F588  38 21 00 20 */	addi r1, r1, 0x20
/* 802529AC 0024F58C  7C 08 03 A6 */	mtlr r0
/* 802529B0 0024F590  4E 80 00 20 */	blr 

.global func_802529B4
func_802529B4:
/* 802529B4 0024F594  7C 08 02 A6 */	mflr r0
/* 802529B8 0024F598  3C 60 80 4A */	lis r3, lbl_804A09B0@ha
/* 802529BC 0024F59C  90 01 00 04 */	stw r0, 4(r1)
/* 802529C0 0024F5A0  38 83 09 B0 */	addi r4, r3, lbl_804A09B0@l
/* 802529C4 0024F5A4  38 00 00 00 */	li r0, 0
/* 802529C8 0024F5A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802529CC 0024F5AC  3C 60 80 3F */	lis r3, lbl_803EFCE8@ha
/* 802529D0 0024F5B0  54 00 10 3A */	slwi r0, r0, 2
/* 802529D4 0024F5B4  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 802529D8 0024F5B8  3B E3 FC E8 */	addi r31, r3, lbl_803EFCE8@l
/* 802529DC 0024F5BC  7F C4 02 14 */	add r30, r4, r0
/* 802529E0 0024F5C0  3B 80 00 05 */	li r28, 5
/* 802529E4 0024F5C4  83 A4 00 00 */	lwz r29, 0(r4)
lbl_802529E8:
/* 802529E8 0024F5C8  80 1F 00 00 */	lwz r0, 0(r31)
/* 802529EC 0024F5CC  2C 00 01 00 */	cmpwi r0, 0x100
/* 802529F0 0024F5D0  7C 1B 03 78 */	mr r27, r0
/* 802529F4 0024F5D4  41 82 00 D4 */	beq lbl_80252AC8
/* 802529F8 0024F5D8  2C 1D 00 00 */	cmpwi r29, 0
/* 802529FC 0024F5DC  41 82 00 30 */	beq lbl_80252A2C
/* 80252A00 0024F5E0  88 0D B5 E0 */	lbz r0, lbl_804D6C80@sda21(r13)
/* 80252A04 0024F5E4  28 00 00 00 */	cmplwi r0, 0
/* 80252A08 0024F5E8  41 82 00 0C */	beq lbl_80252A14
/* 80252A0C 0024F5EC  38 60 00 01 */	li r3, 1
/* 80252A10 0024F5F0  48 00 00 0C */	b lbl_80252A1C
lbl_80252A14:
/* 80252A14 0024F5F4  7F 63 DB 78 */	mr r3, r27
/* 80252A18 0024F5F8  4B F1 C7 09 */	bl func_8016F120
lbl_80252A1C:
/* 80252A1C 0024F5FC  2C 03 00 00 */	cmpwi r3, 0
/* 80252A20 0024F600  41 82 00 A0 */	beq lbl_80252AC0
/* 80252A24 0024F604  3B BD FF FF */	addi r29, r29, -1
/* 80252A28 0024F608  48 00 00 98 */	b lbl_80252AC0
lbl_80252A2C:
/* 80252A2C 0024F60C  2C 1C 00 00 */	cmpwi r28, 0
/* 80252A30 0024F610  41 82 00 90 */	beq lbl_80252AC0
/* 80252A34 0024F614  88 0D B5 E0 */	lbz r0, lbl_804D6C80@sda21(r13)
/* 80252A38 0024F618  28 00 00 00 */	cmplwi r0, 0
/* 80252A3C 0024F61C  41 82 00 0C */	beq lbl_80252A48
/* 80252A40 0024F620  38 60 00 01 */	li r3, 1
/* 80252A44 0024F624  48 00 00 0C */	b lbl_80252A50
lbl_80252A48:
/* 80252A48 0024F628  7F 63 DB 78 */	mr r3, r27
/* 80252A4C 0024F62C  4B F1 C6 D5 */	bl func_8016F120
lbl_80252A50:
/* 80252A50 0024F630  2C 03 00 00 */	cmpwi r3, 0
/* 80252A54 0024F634  41 82 00 6C */	beq lbl_80252AC0
/* 80252A58 0024F638  7F 63 DB 78 */	mr r3, r27
/* 80252A5C 0024F63C  4B F1 C7 AD */	bl func_8016F208
/* 80252A60 0024F640  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80252A64 0024F644  80 7E 00 04 */	lwz r3, 4(r30)
/* 80252A68 0024F648  38 04 FF FE */	addi r0, r4, -2
/* 80252A6C 0024F64C  1C 80 00 03 */	mulli r4, r0, 3
/* 80252A70 0024F650  38 84 01 BA */	addi r4, r4, 0x1ba
/* 80252A74 0024F654  48 15 38 F5 */	bl func_803A6368
/* 80252A78 0024F658  7F 63 DB 78 */	mr r3, r27
/* 80252A7C 0024F65C  4B F1 C7 8D */	bl func_8016F208
/* 80252A80 0024F660  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80252A84 0024F664  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 80252A88 0024F668  38 04 FF FE */	addi r0, r4, -2
/* 80252A8C 0024F66C  1C 80 00 03 */	mulli r4, r0, 3
/* 80252A90 0024F670  38 84 01 BB */	addi r4, r4, 0x1bb
/* 80252A94 0024F674  48 15 38 D5 */	bl func_803A6368
/* 80252A98 0024F678  7F 63 DB 78 */	mr r3, r27
/* 80252A9C 0024F67C  4B F1 C7 6D */	bl func_8016F208
/* 80252AA0 0024F680  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80252AA4 0024F684  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 80252AA8 0024F688  38 04 FF FE */	addi r0, r4, -2
/* 80252AAC 0024F68C  1C 80 00 03 */	mulli r4, r0, 3
/* 80252AB0 0024F690  38 84 01 BC */	addi r4, r4, 0x1bc
/* 80252AB4 0024F694  48 15 38 B5 */	bl func_803A6368
/* 80252AB8 0024F698  3B DE 00 04 */	addi r30, r30, 4
/* 80252ABC 0024F69C  3B 9C FF FF */	addi r28, r28, -1
lbl_80252AC0:
/* 80252AC0 0024F6A0  3B FF 00 04 */	addi r31, r31, 4
/* 80252AC4 0024F6A4  4B FF FF 24 */	b lbl_802529E8
lbl_80252AC8:
/* 80252AC8 0024F6A8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80252ACC 0024F6AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80252AD0 0024F6B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80252AD4 0024F6B4  7C 08 03 A6 */	mtlr r0
/* 80252AD8 0024F6B8  4E 80 00 20 */	blr 

.global func_80252ADC
func_80252ADC:
/* 80252ADC 0024F6BC  7C 08 02 A6 */	mflr r0
/* 80252AE0 0024F6C0  3C 60 80 4A */	lis r3, lbl_804A09B0@ha
/* 80252AE4 0024F6C4  90 01 00 04 */	stw r0, 4(r1)
/* 80252AE8 0024F6C8  94 21 FF 98 */	stwu r1, -0x68(r1)
/* 80252AEC 0024F6CC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80252AF0 0024F6D0  DB C1 00 58 */	stfd f30, 0x58(r1)
/* 80252AF4 0024F6D4  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80252AF8 0024F6D8  DB 81 00 48 */	stfd f28, 0x48(r1)
/* 80252AFC 0024F6DC  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 80252B00 0024F6E0  DB 41 00 38 */	stfd f26, 0x38(r1)
/* 80252B04 0024F6E4  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 80252B08 0024F6E8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80252B0C 0024F6EC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80252B10 0024F6F0  3F C0 43 30 */	lis r30, 0x4330
/* 80252B14 0024F6F4  93 A1 00 24 */	stw r29, 0x24(r1)
/* 80252B18 0024F6F8  3B A3 09 B0 */	addi r29, r3, lbl_804A09B0@l
/* 80252B1C 0024F6FC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80252B20 0024F700  3B 80 00 00 */	li r28, 0
/* 80252B24 0024F704  C3 42 C8 A4 */	lfs f26, lbl_804DC284@sda21(r2)
/* 80252B28 0024F708  C3 62 C8 A8 */	lfs f27, lbl_804DC288@sda21(r2)
/* 80252B2C 0024F70C  CB 82 C8 D0 */	lfd f28, lbl_804DC2B0@sda21(r2)
/* 80252B30 0024F710  C3 A2 C8 B4 */	lfs f29, lbl_804DC294@sda21(r2)
/* 80252B34 0024F714  C3 C2 C8 B8 */	lfs f30, lbl_804DC298@sda21(r2)
/* 80252B38 0024F718  C3 E2 C8 C0 */	lfs f31, lbl_804DC2A0@sda21(r2)
lbl_80252B3C:
/* 80252B3C 0024F71C  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 80252B40 0024F720  C0 22 C8 A0 */	lfs f1, lbl_804DC280@sda21(r2)
/* 80252B44 0024F724  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80252B48 0024F728  38 60 00 00 */	li r3, 0
/* 80252B4C 0024F72C  C0 62 C8 90 */	lfs f3, lbl_804DC270@sda21(r2)
/* 80252B50 0024F730  38 80 00 01 */	li r4, 1
/* 80252B54 0024F734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80252B58 0024F738  C0 82 C8 AC */	lfs f4, lbl_804DC28C@sda21(r2)
/* 80252B5C 0024F73C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80252B60 0024F740  C0 A2 C8 B0 */	lfs f5, lbl_804DC290@sda21(r2)
/* 80252B64 0024F744  EC 00 E0 28 */	fsubs f0, f0, f28
/* 80252B68 0024F748  EF 3B 00 32 */	fmuls f25, f27, f0
/* 80252B6C 0024F74C  EC 5A C8 2A */	fadds f2, f26, f25
/* 80252B70 0024F750  48 15 2F 5D */	bl func_803A5ACC
/* 80252B74 0024F754  90 7D 00 04 */	stw r3, 4(r29)
/* 80252B78 0024F758  3B E0 00 02 */	li r31, 2
/* 80252B7C 0024F75C  EC 5E C8 2A */	fadds f2, f30, f25
/* 80252B80 0024F760  38 60 00 00 */	li r3, 0
/* 80252B84 0024F764  80 BD 00 04 */	lwz r5, 4(r29)
/* 80252B88 0024F768  38 80 00 01 */	li r4, 1
/* 80252B8C 0024F76C  D3 A5 00 34 */	stfs f29, 0x34(r5)
/* 80252B90 0024F770  D3 A5 00 38 */	stfs f29, 0x38(r5)
/* 80252B94 0024F774  80 BD 00 04 */	lwz r5, 4(r29)
/* 80252B98 0024F778  9B E5 00 4A */	stb r31, 0x4a(r5)
/* 80252B9C 0024F77C  C0 22 C8 A0 */	lfs f1, lbl_804DC280@sda21(r2)
/* 80252BA0 0024F780  C0 62 C8 90 */	lfs f3, lbl_804DC270@sda21(r2)
/* 80252BA4 0024F784  C0 82 C8 AC */	lfs f4, lbl_804DC28C@sda21(r2)
/* 80252BA8 0024F788  C0 A2 C8 B0 */	lfs f5, lbl_804DC290@sda21(r2)
/* 80252BAC 0024F78C  48 15 2F 21 */	bl func_803A5ACC
/* 80252BB0 0024F790  90 7D 00 2C */	stw r3, 0x2c(r29)
/* 80252BB4 0024F794  EC 5F C8 2A */	fadds f2, f31, f25
/* 80252BB8 0024F798  38 60 00 00 */	li r3, 0
/* 80252BBC 0024F79C  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 80252BC0 0024F7A0  38 80 00 01 */	li r4, 1
/* 80252BC4 0024F7A4  D3 A5 00 34 */	stfs f29, 0x34(r5)
/* 80252BC8 0024F7A8  D3 A5 00 38 */	stfs f29, 0x38(r5)
/* 80252BCC 0024F7AC  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 80252BD0 0024F7B0  9B E5 00 4A */	stb r31, 0x4a(r5)
/* 80252BD4 0024F7B4  C0 22 C8 BC */	lfs f1, lbl_804DC29C@sda21(r2)
/* 80252BD8 0024F7B8  C0 62 C8 90 */	lfs f3, lbl_804DC270@sda21(r2)
/* 80252BDC 0024F7BC  C0 82 C8 C4 */	lfs f4, lbl_804DC2A4@sda21(r2)
/* 80252BE0 0024F7C0  C0 A2 C8 C8 */	lfs f5, lbl_804DC2A8@sda21(r2)
/* 80252BE4 0024F7C4  48 15 2E E9 */	bl func_803A5ACC
/* 80252BE8 0024F7C8  90 7D 00 18 */	stw r3, 0x18(r29)
/* 80252BEC 0024F7CC  2C 1C 00 04 */	cmpwi r28, 4
/* 80252BF0 0024F7D0  80 7D 00 18 */	lwz r3, 0x18(r29)
/* 80252BF4 0024F7D4  D3 A3 00 34 */	stfs f29, 0x34(r3)
/* 80252BF8 0024F7D8  D3 A3 00 38 */	stfs f29, 0x38(r3)
/* 80252BFC 0024F7DC  40 82 00 08 */	bne lbl_80252C04
/* 80252C00 0024F7E0  4B FF FD B5 */	bl func_802529B4
lbl_80252C04:
/* 80252C04 0024F7E4  3B 9C 00 01 */	addi r28, r28, 1
/* 80252C08 0024F7E8  2C 1C 00 05 */	cmpwi r28, 5
/* 80252C0C 0024F7EC  3B BD 00 04 */	addi r29, r29, 4
/* 80252C10 0024F7F0  41 80 FF 2C */	blt lbl_80252B3C
/* 80252C14 0024F7F4  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80252C18 0024F7F8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80252C1C 0024F7FC  CB C1 00 58 */	lfd f30, 0x58(r1)
/* 80252C20 0024F800  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80252C24 0024F804  CB 81 00 48 */	lfd f28, 0x48(r1)
/* 80252C28 0024F808  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 80252C2C 0024F80C  CB 41 00 38 */	lfd f26, 0x38(r1)
/* 80252C30 0024F810  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 80252C34 0024F814  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80252C38 0024F818  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80252C3C 0024F81C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80252C40 0024F820  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80252C44 0024F824  38 21 00 68 */	addi r1, r1, 0x68
/* 80252C48 0024F828  7C 08 03 A6 */	mtlr r0
/* 80252C4C 0024F82C  4E 80 00 20 */	blr 
lbl_80252C50:
/* 80252C50 0024F830  7C 08 02 A6 */	mflr r0
/* 80252C54 0024F834  3C 80 80 4A */	lis r4, lbl_804A09B0@ha
/* 80252C58 0024F838  90 01 00 04 */	stw r0, 4(r1)
/* 80252C5C 0024F83C  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 80252C60 0024F840  93 E1 00 24 */	stw r31, 0x24(r1)
/* 80252C64 0024F844  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80252C68 0024F848  3B C4 09 B0 */	addi r30, r4, lbl_804A09B0@l
/* 80252C6C 0024F84C  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 80252C70 0024F850  93 81 00 18 */	stw r28, 0x18(r1)
/* 80252C74 0024F854  A0 6D B5 28 */	lhz r3, lbl_804D6BC8@sda21(r13)
/* 80252C78 0024F858  28 03 00 00 */	cmplwi r3, 0
/* 80252C7C 0024F85C  41 82 00 20 */	beq lbl_80252C9C
/* 80252C80 0024F860  38 03 FF FF */	addi r0, r3, -1
/* 80252C84 0024F864  B0 0D B5 28 */	sth r0, lbl_804D6BC8@sda21(r13)
/* 80252C88 0024F868  38 00 00 00 */	li r0, 0
/* 80252C8C 0024F86C  38 6D B5 28 */	addi r3, r13, lbl_804D6BC8@sda21
/* 80252C90 0024F870  B0 03 00 02 */	sth r0, 2(r3)
/* 80252C94 0024F874  90 03 00 04 */	stw r0, 4(r3)
/* 80252C98 0024F878  48 00 01 94 */	b lbl_80252E2C
lbl_80252C9C:
/* 80252C9C 0024F87C  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 80252CA0 0024F880  2C 00 00 00 */	cmpwi r0, 0
/* 80252CA4 0024F884  41 82 00 20 */	beq lbl_80252CC4
/* 80252CA8 0024F888  2C 00 00 01 */	cmpwi r0, 1
/* 80252CAC 0024F88C  40 82 00 08 */	bne lbl_80252CB4
/* 80252CB0 0024F890  4B FF FE 2D */	bl func_80252ADC
lbl_80252CB4:
/* 80252CB4 0024F894  80 7E 00 44 */	lwz r3, 0x44(r30)
/* 80252CB8 0024F898  38 03 FF FF */	addi r0, r3, -1
/* 80252CBC 0024F89C  90 1E 00 44 */	stw r0, 0x44(r30)
/* 80252CC0 0024F8A0  48 00 01 6C */	b lbl_80252E2C
lbl_80252CC4:
/* 80252CC4 0024F8A4  38 60 00 04 */	li r3, 4
/* 80252CC8 0024F8A8  4B FD 69 5D */	bl func_80229624
/* 80252CCC 0024F8AC  3B A0 00 00 */	li r29, 0
/* 80252CD0 0024F8B0  3C 80 80 4A */	lis r4, lbl_804A04F0@ha
/* 80252CD4 0024F8B4  3B E3 00 00 */	addi r31, r3, 0
/* 80252CD8 0024F8B8  38 60 00 20 */	li r3, 0x20
/* 80252CDC 0024F8BC  7F A0 E8 38 */	and r0, r29, r29
/* 80252CE0 0024F8C0  7F E3 18 38 */	and r3, r31, r3
/* 80252CE4 0024F8C4  3B 84 04 F0 */	addi r28, r4, lbl_804A04F0@l
/* 80252CE8 0024F8C8  93 FC 00 0C */	stw r31, 0xc(r28)
/* 80252CEC 0024F8CC  7C 63 EA 78 */	xor r3, r3, r29
/* 80252CF0 0024F8D0  7C 00 EA 78 */	xor r0, r0, r29
/* 80252CF4 0024F8D4  7C 60 03 79 */	or. r0, r3, r0
/* 80252CF8 0024F8D8  93 BC 00 08 */	stw r29, 8(r28)
/* 80252CFC 0024F8DC  41 82 00 6C */	beq lbl_80252D68
/* 80252D00 0024F8E0  38 60 00 00 */	li r3, 0
/* 80252D04 0024F8E4  4B DD 13 2D */	bl func_80024030
/* 80252D08 0024F8E8  9B BC 00 11 */	stb r29, 0x11(r28)
/* 80252D0C 0024F8EC  38 60 00 1C */	li r3, 0x1c
/* 80252D10 0024F8F0  38 80 00 01 */	li r4, 1
/* 80252D14 0024F8F4  38 A0 00 03 */	li r5, 3
/* 80252D18 0024F8F8  4B FD 6B 7D */	bl func_80229894
/* 80252D1C 0024F8FC  57 A0 10 3A */	slwi r0, r29, 2
/* 80252D20 0024F900  7F 9E 02 14 */	add r28, r30, r0
lbl_80252D24:
/* 80252D24 0024F904  80 7C 00 04 */	lwz r3, 4(r28)
/* 80252D28 0024F908  48 15 2F 9D */	bl func_803A5CC4
/* 80252D2C 0024F90C  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 80252D30 0024F910  48 15 2F 95 */	bl func_803A5CC4
/* 80252D34 0024F914  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 80252D38 0024F918  48 15 2F 8D */	bl func_803A5CC4
/* 80252D3C 0024F91C  3B BD 00 01 */	addi r29, r29, 1
/* 80252D40 0024F920  2C 1D 00 05 */	cmpwi r29, 5
/* 80252D44 0024F924  3B 9C 00 04 */	addi r28, r28, 4
/* 80252D48 0024F928  41 80 FF DC */	blt lbl_80252D24
/* 80252D4C 0024F92C  80 7E 00 40 */	lwz r3, 0x40(r30)
/* 80252D50 0024F930  48 15 2F 75 */	bl func_803A5CC4
/* 80252D54 0024F934  80 7E 00 4C */	lwz r3, 0x4c(r30)
/* 80252D58 0024F938  48 13 D4 D1 */	bl func_80390228
/* 80252D5C 0024F93C  38 00 00 00 */	li r0, 0
/* 80252D60 0024F940  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80252D64 0024F944  48 00 00 C8 */	b lbl_80252E2C
lbl_80252D68:
/* 80252D68 0024F948  80 0D 93 68 */	lwz r0, lbl_804D4A08@sda21(r13)
/* 80252D6C 0024F94C  2C 00 00 03 */	cmpwi r0, 3
/* 80252D70 0024F950  41 80 00 38 */	blt lbl_80252DA8
/* 80252D74 0024F954  3C 60 80 4C */	lis r3, HSD_PadCopyStatus@ha
/* 80252D78 0024F958  38 63 20 BC */	addi r3, r3, HSD_PadCopyStatus@l
/* 80252D7C 0024F95C  80 63 00 00 */	lwz r3, 0(r3)
/* 80252D80 0024F960  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80252D84 0024F964  41 82 00 24 */	beq lbl_80252DA8
/* 80252D88 0024F968  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80252D8C 0024F96C  41 82 00 1C */	beq lbl_80252DA8
/* 80252D90 0024F970  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80252D94 0024F974  41 82 00 14 */	beq lbl_80252DA8
/* 80252D98 0024F978  93 BE 00 00 */	stw r29, 0(r30)
/* 80252D9C 0024F97C  38 00 00 01 */	li r0, 1
/* 80252DA0 0024F980  98 0D B5 E0 */	stb r0, lbl_804D6C80@sda21(r13)
/* 80252DA4 0024F984  4B FF FC 11 */	bl func_802529B4
lbl_80252DA8:
/* 80252DA8 0024F988  38 00 00 01 */	li r0, 1
/* 80252DAC 0024F98C  38 A0 00 00 */	li r5, 0
/* 80252DB0 0024F990  7F E0 00 38 */	and r0, r31, r0
/* 80252DB4 0024F994  7F A4 28 38 */	and r4, r29, r5
/* 80252DB8 0024F998  7C 03 2A 78 */	xor r3, r0, r5
/* 80252DBC 0024F99C  7C 80 2A 78 */	xor r0, r4, r5
/* 80252DC0 0024F9A0  7C 60 03 79 */	or. r0, r3, r0
/* 80252DC4 0024F9A4  41 82 00 2C */	beq lbl_80252DF0
/* 80252DC8 0024F9A8  80 1E 00 00 */	lwz r0, 0(r30)
/* 80252DCC 0024F9AC  2C 00 00 00 */	cmpwi r0, 0
/* 80252DD0 0024F9B0  40 81 00 5C */	ble lbl_80252E2C
/* 80252DD4 0024F9B4  38 60 00 02 */	li r3, 2
/* 80252DD8 0024F9B8  4B DD 12 59 */	bl func_80024030
/* 80252DDC 0024F9BC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80252DE0 0024F9C0  38 03 FF FF */	addi r0, r3, -1
/* 80252DE4 0024F9C4  90 1E 00 00 */	stw r0, 0(r30)
/* 80252DE8 0024F9C8  4B FF FB CD */	bl func_802529B4
/* 80252DEC 0024F9CC  48 00 00 40 */	b lbl_80252E2C
lbl_80252DF0:
/* 80252DF0 0024F9D0  38 00 00 02 */	li r0, 2
/* 80252DF4 0024F9D4  7F E0 00 38 */	and r0, r31, r0
/* 80252DF8 0024F9D8  7C 03 2A 78 */	xor r3, r0, r5
/* 80252DFC 0024F9DC  7C 80 2A 78 */	xor r0, r4, r5
/* 80252E00 0024F9E0  7C 60 03 79 */	or. r0, r3, r0
/* 80252E04 0024F9E4  41 82 00 28 */	beq lbl_80252E2C
/* 80252E08 0024F9E8  4B FF FA F1 */	bl func_802528F8
/* 80252E0C 0024F9EC  2C 03 00 05 */	cmpwi r3, 5
/* 80252E10 0024F9F0  40 81 00 1C */	ble lbl_80252E2C
/* 80252E14 0024F9F4  38 60 00 02 */	li r3, 2
/* 80252E18 0024F9F8  4B DD 12 19 */	bl func_80024030
/* 80252E1C 0024F9FC  80 7E 00 00 */	lwz r3, 0(r30)
/* 80252E20 0024FA00  38 03 00 01 */	addi r0, r3, 1
/* 80252E24 0024FA04  90 1E 00 00 */	stw r0, 0(r30)
/* 80252E28 0024FA08  4B FF FB 8D */	bl func_802529B4
lbl_80252E2C:
/* 80252E2C 0024FA0C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80252E30 0024FA10  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 80252E34 0024FA14  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 80252E38 0024FA18  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 80252E3C 0024FA1C  83 81 00 18 */	lwz r28, 0x18(r1)
/* 80252E40 0024FA20  38 21 00 28 */	addi r1, r1, 0x28
/* 80252E44 0024FA24  7C 08 03 A6 */	mtlr r0
/* 80252E48 0024FA28  4E 80 00 20 */	blr 
lbl_80252E4C:
/* 80252E4C 0024FA2C  7C 08 02 A6 */	mflr r0
/* 80252E50 0024FA30  3C 80 80 4A */	lis r4, lbl_804A09B0@ha
/* 80252E54 0024FA34  90 01 00 04 */	stw r0, 4(r1)
/* 80252E58 0024FA38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80252E5C 0024FA3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80252E60 0024FA40  3B E4 09 B0 */	addi r31, r4, lbl_804A09B0@l
/* 80252E64 0024FA44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80252E68 0024FA48  83 C3 00 28 */	lwz r30, 0x28(r3)
/* 80252E6C 0024FA4C  80 7F 00 48 */	lwz r3, 0x48(r31)
/* 80252E70 0024FA50  2C 03 00 C8 */	cmpwi r3, 0xc8
/* 80252E74 0024FA54  40 80 00 10 */	bge lbl_80252E84
/* 80252E78 0024FA58  38 03 00 01 */	addi r0, r3, 1
/* 80252E7C 0024FA5C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 80252E80 0024FA60  48 00 00 0C */	b lbl_80252E8C
lbl_80252E84:
/* 80252E84 0024FA64  38 00 00 00 */	li r0, 0
/* 80252E88 0024FA68  90 1F 00 48 */	stw r0, 0x48(r31)
lbl_80252E8C:
/* 80252E8C 0024FA6C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80252E90 0024FA70  2C 00 00 00 */	cmpwi r0, 0
/* 80252E94 0024FA74  40 81 00 38 */	ble lbl_80252ECC
/* 80252E98 0024FA78  28 1E 00 00 */	cmplwi r30, 0
/* 80252E9C 0024FA7C  40 82 00 0C */	bne lbl_80252EA8
/* 80252EA0 0024FA80  38 60 00 00 */	li r3, 0
/* 80252EA4 0024FA84  48 00 00 08 */	b lbl_80252EAC
lbl_80252EA8:
/* 80252EA8 0024FA88  80 7E 00 10 */	lwz r3, 0x10(r30)
lbl_80252EAC:
/* 80252EAC 0024FA8C  28 03 00 00 */	cmplwi r3, 0
/* 80252EB0 0024FA90  40 82 00 0C */	bne lbl_80252EBC
/* 80252EB4 0024FA94  38 60 00 00 */	li r3, 0
/* 80252EB8 0024FA98  48 00 00 08 */	b lbl_80252EC0
lbl_80252EBC:
/* 80252EBC 0024FA9C  80 63 00 08 */	lwz r3, 8(r3)
lbl_80252EC0:
/* 80252EC0 0024FAA0  38 80 00 10 */	li r4, 0x10
/* 80252EC4 0024FAA4  48 11 F0 3D */	bl HSD_JObjClearFlags
/* 80252EC8 0024FAA8  48 00 00 34 */	b lbl_80252EFC
lbl_80252ECC:
/* 80252ECC 0024FAAC  28 1E 00 00 */	cmplwi r30, 0
/* 80252ED0 0024FAB0  40 82 00 0C */	bne lbl_80252EDC
/* 80252ED4 0024FAB4  38 60 00 00 */	li r3, 0
/* 80252ED8 0024FAB8  48 00 00 08 */	b lbl_80252EE0
lbl_80252EDC:
/* 80252EDC 0024FABC  80 7E 00 10 */	lwz r3, 0x10(r30)
lbl_80252EE0:
/* 80252EE0 0024FAC0  28 03 00 00 */	cmplwi r3, 0
/* 80252EE4 0024FAC4  40 82 00 0C */	bne lbl_80252EF0
/* 80252EE8 0024FAC8  38 60 00 00 */	li r3, 0
/* 80252EEC 0024FACC  48 00 00 08 */	b lbl_80252EF4
lbl_80252EF0:
/* 80252EF0 0024FAD0  80 63 00 08 */	lwz r3, 8(r3)
lbl_80252EF4:
/* 80252EF4 0024FAD4  38 80 00 10 */	li r4, 0x10
/* 80252EF8 0024FAD8  48 11 EE 09 */	bl HSD_JObjSetFlags
lbl_80252EFC:
/* 80252EFC 0024FADC  4B FF F9 FD */	bl func_802528F8
/* 80252F00 0024FAE0  2C 03 00 05 */	cmpwi r3, 5
/* 80252F04 0024FAE4  40 81 00 24 */	ble lbl_80252F28
/* 80252F08 0024FAE8  28 1E 00 00 */	cmplwi r30, 0
/* 80252F0C 0024FAEC  40 82 00 0C */	bne lbl_80252F18
/* 80252F10 0024FAF0  38 60 00 00 */	li r3, 0
/* 80252F14 0024FAF4  48 00 00 08 */	b lbl_80252F1C
lbl_80252F18:
/* 80252F18 0024FAF8  80 7E 00 10 */	lwz r3, 0x10(r30)
lbl_80252F1C:
/* 80252F1C 0024FAFC  38 80 00 10 */	li r4, 0x10
/* 80252F20 0024FB00  48 11 EF E1 */	bl HSD_JObjClearFlags
/* 80252F24 0024FB04  48 00 00 20 */	b lbl_80252F44
lbl_80252F28:
/* 80252F28 0024FB08  28 1E 00 00 */	cmplwi r30, 0
/* 80252F2C 0024FB0C  40 82 00 0C */	bne lbl_80252F38
/* 80252F30 0024FB10  38 60 00 00 */	li r3, 0
/* 80252F34 0024FB14  48 00 00 08 */	b lbl_80252F3C
lbl_80252F38:
/* 80252F38 0024FB18  80 7E 00 10 */	lwz r3, 0x10(r30)
lbl_80252F3C:
/* 80252F3C 0024FB1C  38 80 00 10 */	li r4, 0x10
/* 80252F40 0024FB20  48 11 ED C1 */	bl HSD_JObjSetFlags
lbl_80252F44:
/* 80252F44 0024FB24  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 80252F48 0024FB28  3C 00 43 30 */	lis r0, 0x4330
/* 80252F4C 0024FB2C  C8 22 C8 D0 */	lfd f1, lbl_804DC2B0@sda21(r2)
/* 80252F50 0024FB30  38 7E 00 00 */	addi r3, r30, 0
/* 80252F54 0024FB34  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 80252F58 0024FB38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80252F5C 0024FB3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80252F60 0024FB40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80252F64 0024FB44  EC 20 08 28 */	fsubs f1, f0, f1
/* 80252F68 0024FB48  48 11 C9 55 */	bl HSD_JObjReqAnimAll
/* 80252F6C 0024FB4C  7F C3 F3 78 */	mr r3, r30
/* 80252F70 0024FB50  48 11 D9 B9 */	bl HSD_JObjAnimAll
/* 80252F74 0024FB54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80252F78 0024FB58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80252F7C 0024FB5C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80252F80 0024FB60  38 21 00 20 */	addi r1, r1, 0x20
/* 80252F84 0024FB64  7C 08 03 A6 */	mtlr r0
/* 80252F88 0024FB68  4E 80 00 20 */	blr 

.global func_80252F8C
func_80252F8C:
/* 80252F8C 0024FB6C  7C 08 02 A6 */	mflr r0
/* 80252F90 0024FB70  3C 60 80 4A */	lis r3, lbl_804A04F0@ha
/* 80252F94 0024FB74  90 01 00 04 */	stw r0, 4(r1)
/* 80252F98 0024FB78  38 00 00 05 */	li r0, 5
/* 80252F9C 0024FB7C  3C 80 80 4A */	lis r4, lbl_804A09B0@ha
/* 80252FA0 0024FB80  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80252FA4 0024FB84  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80252FA8 0024FB88  3B E4 09 B0 */	addi r31, r4, lbl_804A09B0@l
/* 80252FAC 0024FB8C  3C 80 80 3F */	lis r4, lbl_803EFCE8@ha
/* 80252FB0 0024FB90  3B A4 FC E8 */	addi r29, r4, lbl_803EFCE8@l
/* 80252FB4 0024FB94  3B C0 00 00 */	li r30, 0
/* 80252FB8 0024FB98  38 80 00 60 */	li r4, 0x60
/* 80252FBC 0024FB9C  B0 0D B5 28 */	sth r0, lbl_804D6BC8@sda21(r13)
/* 80252FC0 0024FBA0  8C 03 04 F0 */	lbzu r0, lbl_804A04F0@l(r3)
/* 80252FC4 0024FBA4  98 03 00 01 */	stb r0, 1(r3)
/* 80252FC8 0024FBA8  38 00 00 1F */	li r0, 0x1f
/* 80252FCC 0024FBAC  98 03 00 00 */	stb r0, 0(r3)
/* 80252FD0 0024FBB0  B3 C3 00 02 */	sth r30, 2(r3)
/* 80252FD4 0024FBB4  38 7F 00 00 */	addi r3, r31, 0
/* 80252FD8 0024FBB8  4B DB 91 89 */	bl func_8000C160
/* 80252FDC 0024FBBC  38 00 00 08 */	li r0, 8
/* 80252FE0 0024FBC0  4C C6 31 82 */	crclr 6
/* 80252FE4 0024FBC4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80252FE8 0024FBC8  38 1D 04 58 */	addi r0, r29, 0x458
/* 80252FEC 0024FBCC  38 9F 00 50 */	addi r4, r31, 0x50
/* 80252FF0 0024FBD0  80 6D B5 18 */	lwz r3, lbl_804D6BB8@sda21(r13)
/* 80252FF4 0024FBD4  38 BD 04 04 */	addi r5, r29, 0x404
/* 80252FF8 0024FBD8  9B CD B5 E0 */	stb r30, lbl_804D6C80@sda21(r13)
/* 80252FFC 0024FBDC  38 DF 00 54 */	addi r6, r31, 0x54
/* 80253000 0024FBE0  38 FD 04 1C */	addi r7, r29, 0x41c
/* 80253004 0024FBE4  90 01 00 08 */	stw r0, 8(r1)
/* 80253008 0024FBE8  39 1F 00 58 */	addi r8, r31, 0x58
/* 8025300C 0024FBEC  39 3D 04 38 */	addi r9, r29, 0x438
/* 80253010 0024FBF0  93 C1 00 0C */	stw r30, 0xc(r1)
/* 80253014 0024FBF4  39 5F 00 5C */	addi r10, r31, 0x5c
/* 80253018 0024FBF8  4B DC 3A D9 */	bl func_80016AF0
/* 8025301C 0024FBFC  38 60 00 00 */	li r3, 0
/* 80253020 0024FC00  38 80 00 01 */	li r4, 1
/* 80253024 0024FC04  38 A0 00 80 */	li r5, 0x80
/* 80253028 0024FC08  48 13 D1 C9 */	bl func_803901F0
/* 8025302C 0024FC0C  3C 80 80 25 */	lis r4, lbl_80252C50@ha
/* 80253030 0024FC10  38 84 2C 50 */	addi r4, r4, lbl_80252C50@l
/* 80253034 0024FC14  38 A0 00 00 */	li r5, 0
/* 80253038 0024FC18  48 13 CD 1D */	bl func_8038FD54
/* 8025303C 0024FC1C  80 AD C1 9C */	lwz r5, lbl_804D783C@sda21(r13)
/* 80253040 0024FC20  3B BF 00 50 */	addi r29, r31, 0x50
/* 80253044 0024FC24  88 03 00 0D */	lbz r0, 0xd(r3)
/* 80253048 0024FC28  38 80 00 07 */	li r4, 7
/* 8025304C 0024FC2C  50 A0 26 B6 */	rlwimi r0, r5, 4, 0x1a, 0x1b
/* 80253050 0024FC30  98 03 00 0D */	stb r0, 0xd(r3)
/* 80253054 0024FC34  38 60 00 06 */	li r3, 6
/* 80253058 0024FC38  38 A0 00 80 */	li r5, 0x80
/* 8025305C 0024FC3C  48 13 D1 95 */	bl func_803901F0
/* 80253060 0024FC40  7C 7B 1B 78 */	mr r27, r3
/* 80253064 0024FC44  93 7F 00 4C */	stw r27, 0x4c(r31)
/* 80253068 0024FC48  80 7D 00 00 */	lwz r3, 0(r29)
/* 8025306C 0024FC4C  48 11 DD D9 */	bl HSD_JObjLoadJoint
/* 80253070 0024FC50  3B 83 00 00 */	addi r28, r3, 0
/* 80253074 0024FC54  88 8D C1 A9 */	lbz r4, lbl_804D7849@sda21(r13)
/* 80253078 0024FC58  38 7B 00 00 */	addi r3, r27, 0
/* 8025307C 0024FC5C  38 BC 00 00 */	addi r5, r28, 0
/* 80253080 0024FC60  48 13 D9 F1 */	bl func_80390A70
/* 80253084 0024FC64  3C 60 80 39 */	lis r3, func_80391070@ha
/* 80253088 0024FC68  38 83 10 70 */	addi r4, r3, func_80391070@l
/* 8025308C 0024FC6C  38 7B 00 00 */	addi r3, r27, 0
/* 80253090 0024FC70  38 A0 00 04 */	li r5, 4
/* 80253094 0024FC74  38 C0 00 80 */	li r6, 0x80
/* 80253098 0024FC78  48 13 D6 05 */	bl GObj_SetupGXLink
/* 8025309C 0024FC7C  80 9D 00 04 */	lwz r4, 4(r29)
/* 802530A0 0024FC80  7F 83 E3 78 */	mr r3, r28
/* 802530A4 0024FC84  80 BD 00 08 */	lwz r5, 8(r29)
/* 802530A8 0024FC88  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 802530AC 0024FC8C  48 11 CA B1 */	bl HSD_JObjAddAnimAll
/* 802530B0 0024FC90  7F 83 E3 78 */	mr r3, r28
/* 802530B4 0024FC94  C0 22 C8 D8 */	lfs f1, lbl_804DC2B8@sda21(r2)
/* 802530B8 0024FC98  48 11 C8 05 */	bl HSD_JObjReqAnimAll
/* 802530BC 0024FC9C  7F 83 E3 78 */	mr r3, r28
/* 802530C0 0024FCA0  48 11 D8 69 */	bl HSD_JObjAnimAll
/* 802530C4 0024FCA4  28 1C 00 00 */	cmplwi r28, 0
/* 802530C8 0024FCA8  40 82 00 08 */	bne lbl_802530D0
/* 802530CC 0024FCAC  48 00 00 08 */	b lbl_802530D4
lbl_802530D0:
/* 802530D0 0024FCB0  83 DC 00 10 */	lwz r30, 0x10(r28)
lbl_802530D4:
/* 802530D4 0024FCB4  28 1E 00 00 */	cmplwi r30, 0
/* 802530D8 0024FCB8  40 82 00 0C */	bne lbl_802530E4
/* 802530DC 0024FCBC  38 60 00 00 */	li r3, 0
/* 802530E0 0024FCC0  48 00 00 08 */	b lbl_802530E8
lbl_802530E4:
/* 802530E4 0024FCC4  80 7E 00 08 */	lwz r3, 8(r30)
lbl_802530E8:
/* 802530E8 0024FCC8  38 80 00 10 */	li r4, 0x10
/* 802530EC 0024FCCC  48 11 EC 15 */	bl HSD_JObjSetFlags
/* 802530F0 0024FCD0  28 1C 00 00 */	cmplwi r28, 0
/* 802530F4 0024FCD4  40 82 00 0C */	bne lbl_80253100
/* 802530F8 0024FCD8  38 60 00 00 */	li r3, 0
/* 802530FC 0024FCDC  48 00 00 08 */	b lbl_80253104
lbl_80253100:
/* 80253100 0024FCE0  80 7C 00 10 */	lwz r3, 0x10(r28)
lbl_80253104:
/* 80253104 0024FCE4  38 80 00 10 */	li r4, 0x10
/* 80253108 0024FCE8  48 11 EB F9 */	bl HSD_JObjSetFlags
/* 8025310C 0024FCEC  3C 60 80 25 */	lis r3, lbl_80252E4C@ha
/* 80253110 0024FCF0  38 83 2E 4C */	addi r4, r3, lbl_80252E4C@l
/* 80253114 0024FCF4  38 7B 00 00 */	addi r3, r27, 0
/* 80253118 0024FCF8  38 A0 00 00 */	li r5, 0
/* 8025311C 0024FCFC  48 13 CC 39 */	bl func_8038FD54
/* 80253120 0024FD00  80 AD C1 9C */	lwz r5, lbl_804D783C@sda21(r13)
/* 80253124 0024FD04  38 80 00 01 */	li r4, 1
/* 80253128 0024FD08  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8025312C 0024FD0C  50 A0 26 B6 */	rlwimi r0, r5, 4, 0x1a, 0x1b
/* 80253130 0024FD10  98 03 00 0D */	stb r0, 0xd(r3)
/* 80253134 0024FD14  38 60 00 00 */	li r3, 0
/* 80253138 0024FD18  C0 22 C8 88 */	lfs f1, lbl_804DC268@sda21(r2)
/* 8025313C 0024FD1C  C0 42 C8 8C */	lfs f2, lbl_804DC26C@sda21(r2)
/* 80253140 0024FD20  C0 62 C8 90 */	lfs f3, lbl_804DC270@sda21(r2)
/* 80253144 0024FD24  C0 82 C8 94 */	lfs f4, lbl_804DC274@sda21(r2)
/* 80253148 0024FD28  C0 A2 C8 98 */	lfs f5, lbl_804DC278@sda21(r2)
/* 8025314C 0024FD2C  48 15 29 81 */	bl func_803A5ACC
/* 80253150 0024FD30  90 7F 00 40 */	stw r3, 0x40(r31)
/* 80253154 0024FD34  38 80 00 A5 */	li r4, 0xa5
/* 80253158 0024FD38  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8025315C 0024FD3C  C0 02 C8 9C */	lfs f0, lbl_804DC27C@sda21(r2)
/* 80253160 0024FD40  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 80253164 0024FD44  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 80253168 0024FD48  80 7F 00 40 */	lwz r3, 0x40(r31)
/* 8025316C 0024FD4C  48 15 31 FD */	bl func_803A6368
/* 80253170 0024FD50  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80253174 0024FD54  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80253178 0024FD58  38 21 00 38 */	addi r1, r1, 0x38
/* 8025317C 0024FD5C  7C 08 03 A6 */	mtlr r0
/* 80253180 0024FD60  4E 80 00 20 */	blr 


.section .data

.global lbl_803EFCE8
lbl_803EFCE8:
    .4byte NULL
    .4byte 0x00000001
    .4byte 0x00000002
    .4byte 0x00000003
    .4byte 0x00000004
    .4byte 0x00000005
    .4byte 0x00000006
    .4byte 0x00000007
    .4byte 0x00000008
    .4byte 0x00000009
    .4byte 0x0000000A
    .4byte 0x0000000B
    .4byte 0x0000000C
    .4byte 0x0000000D
    .4byte 0x0000000E
    .4byte 0x0000000F
    .4byte 0x00000010
    .4byte 0x00000011
    .4byte 0x00000012
    .4byte 0x00000013
    .4byte 0x00000014
    .4byte 0x00000015
    .4byte 0x00000016
    .4byte 0x00000017
    .4byte 0x00000018
    .4byte 0x00000019
    .4byte 0x0000001A
    .4byte 0x0000001B
    .4byte 0x0000001C
    .4byte 0x0000001D
    .4byte 0x0000001E
    .4byte 0x0000001F
    .4byte 0x00000020
    .4byte 0x00000021
    .4byte 0x00000022
    .4byte 0x00000023
    .4byte 0x00000024
    .4byte 0x00000025
    .4byte 0x00000026
    .4byte 0x00000027
    .4byte 0x00000028
    .4byte 0x00000029
    .4byte 0x0000002A
    .4byte 0x0000002B
    .4byte 0x0000002C
    .4byte 0x0000002D
    .4byte 0x0000002E
    .4byte 0x0000002F
    .4byte 0x00000030
    .4byte 0x00000031
    .4byte 0x00000032
    .4byte 0x00000033
    .4byte 0x00000034
    .4byte 0x00000035
    .4byte 0x00000036
    .4byte 0x00000037
    .4byte 0x00000038
    .4byte 0x00000039
    .4byte 0x0000003A
    .4byte 0x0000003B
    .4byte 0x0000003C
    .4byte 0x0000003D
    .4byte 0x0000003E
    .4byte 0x0000003F
    .4byte 0x00000040
    .4byte 0x00000041
    .4byte 0x00000042
    .4byte 0x00000043
    .4byte 0x00000044
    .4byte 0x00000045
    .4byte 0x00000046
    .4byte 0x00000047
    .4byte 0x00000048
    .4byte 0x00000049
    .4byte 0x0000004A
    .4byte 0x0000004B
    .4byte 0x0000004C
    .4byte 0x0000004D
    .4byte 0x000000F9
    .4byte 0x0000004E
    .4byte 0x0000004F
    .4byte 0x00000050
    .4byte 0x00000051
    .4byte 0x00000052
    .4byte 0x00000053
    .4byte 0x00000054
    .4byte 0x00000055
    .4byte 0x00000056
    .4byte 0x00000057
    .4byte 0x00000058
    .4byte 0x00000059
    .4byte 0x0000005A
    .4byte 0x0000005B
    .4byte 0x0000005C
    .4byte 0x0000005D
    .4byte 0x0000005E
    .4byte 0x0000005F
    .4byte 0x00000060
    .4byte 0x000000FA
    .4byte 0x00000061
    .4byte 0x00000062
    .4byte 0x00000063
    .4byte 0x00000064
    .4byte 0x00000065
    .4byte 0x000000FB
    .4byte 0x00000066
    .4byte 0x00000067
    .4byte 0x00000068
    .4byte 0x00000069
    .4byte 0x0000006A
    .4byte 0x0000006B
    .4byte 0x0000006C
    .4byte 0x000000FC
    .4byte 0x0000006D
    .4byte 0x000000FD
    .4byte 0x0000006E
    .4byte 0x0000006F
    .4byte 0x00000070
    .4byte 0x00000071
    .4byte 0x00000072
    .4byte 0x00000073
    .4byte 0x00000074
    .4byte 0x00000075
    .4byte 0x00000076
    .4byte 0x00000077
    .4byte 0x00000078
    .4byte 0x00000079
    .4byte 0x0000007A
    .4byte 0x0000007B
    .4byte 0x0000007C
    .4byte 0x0000007D
    .4byte 0x0000007E
    .4byte 0x0000007F
    .4byte 0x00000080
    .4byte 0x00000081
    .4byte 0x00000082
    .4byte 0x00000083
    .4byte 0x00000084
    .4byte 0x00000085
    .4byte 0x00000086
    .4byte 0x00000087
    .4byte 0x00000088
    .4byte 0x00000089
    .4byte 0x0000008A
    .4byte 0x0000008B
    .4byte 0x0000008C
    .4byte 0x0000008D
    .4byte 0x0000008E
    .4byte 0x0000008F
    .4byte 0x00000090
    .4byte 0x00000091
    .4byte 0x00000092
    .4byte 0x00000093
    .4byte 0x00000094
    .4byte 0x00000095
    .4byte 0x00000096
    .4byte 0x00000097
    .4byte 0x00000098
    .4byte 0x00000099
    .4byte 0x0000009A
    .4byte 0x0000009B
    .4byte 0x0000009C
    .4byte 0x0000009D
    .4byte 0x000000FE
    .4byte 0x000000FF
    .4byte 0x0000009E
    .4byte 0x0000009F
    .4byte 0x000000A0
    .4byte 0x000000A1
    .4byte 0x000000A2
    .4byte 0x000000A3
    .4byte 0x000000A4
    .4byte 0x000000A5
    .4byte 0x000000A6
    .4byte 0x000000A7
    .4byte 0x000000A8
    .4byte 0x000000A9
    .4byte 0x000000AA
    .4byte 0x000000AB
    .4byte 0x000000AC
    .4byte 0x000000AD
    .4byte 0x000000AE
    .4byte 0x000000AF
    .4byte 0x000000B0
    .4byte 0x000000B1
    .4byte 0x000000B2
    .4byte 0x000000B3
    .4byte 0x000000B4
    .4byte 0x000000B5
    .4byte 0x000000B6
    .4byte 0x000000B7
    .4byte 0x000000B8
    .4byte 0x000000B9
    .4byte 0x000000BA
    .4byte 0x000000BB
    .4byte 0x000000BC
    .4byte 0x000000BD
    .4byte 0x000000BE
    .4byte 0x000000BF
    .4byte 0x000000C0
    .4byte 0x000000C1
    .4byte 0x000000C2
    .4byte 0x000000C3
    .4byte 0x000000C4
    .4byte 0x000000C5
    .4byte 0x000000C6
    .4byte 0x000000C7
    .4byte 0x000000C8
    .4byte 0x000000C9
    .4byte 0x000000CA
    .4byte 0x000000CB
    .4byte 0x000000CC
    .4byte 0x000000CD
    .4byte 0x000000CE
    .4byte 0x000000CF
    .4byte 0x000000D0
    .4byte 0x000000D1
    .4byte 0x000000D2
    .4byte 0x000000D3
    .4byte 0x000000D4
    .4byte 0x000000D5
    .4byte 0x000000D6
    .4byte 0x000000D7
    .4byte 0x000000D8
    .4byte 0x000000D9
    .4byte 0x000000DA
    .4byte 0x000000DB
    .4byte 0x000000DC
    .4byte 0x000000DD
    .4byte 0x000000DE
    .4byte 0x000000DF
    .4byte 0x000000E0
    .4byte 0x000000E1
    .4byte 0x000000E2
    .4byte 0x000000E3
    .4byte 0x000000E4
    .4byte 0x000000E5
    .4byte 0x000000F6
    .4byte 0x000000F7
    .4byte 0x000000F8
    .4byte 0x000000E6
    .4byte 0x000000E7
    .4byte 0x000000E8
    .4byte 0x000000E9
    .4byte 0x000000EA
    .4byte 0x000000EB
    .4byte 0x000000EC
    .4byte 0x000000ED
    .4byte 0x000000EE
    .4byte 0x000000EF
    .4byte 0x000000F0
    .4byte 0x000000F1
    .4byte 0x000000F2
    .4byte 0x000000F3
    .4byte 0x000000F4
    .4byte 0x000000F5
    .4byte 0x00000100
    .4byte 0x4D656E4D
    .4byte 0x61696E43
    .4byte 0x6F6E426F
    .4byte 0x5F546F70
    .4byte 0x5F6A6F69
    .4byte 0x6E740000
    .4byte 0x4D656E4D
    .4byte 0x61696E43
    .4byte 0x6F6E426F
    .4byte 0x5F546F70
    .4byte 0x5F616E69
    .4byte 0x6D6A6F69
    .4byte 0x6E740000
    .4byte 0x4D656E4D
    .4byte 0x61696E43
    .4byte 0x6F6E426F
    .4byte 0x5F546F70
    .4byte 0x5F6D6174
    .4byte 0x616E696D
    .4byte 0x5F6A6F69
    .4byte 0x6E740000
    .4byte 0x4D656E4D
    .4byte 0x61696E43
    .4byte 0x6F6E426F
    .4byte 0x5F546F70
    .4byte 0x5F736861
    .4byte 0x7065616E
    .4byte 0x696D5F6A
    .4byte 0x6F696E74
    .4byte NULL
    .4byte NULL


.section .bss, "wa"

.global lbl_804A09B0
lbl_804A09B0:
	.skip 0x60


.section .sbss

.global lbl_804D6C80
lbl_804D6C80:
	.skip 0x8


.section .sdata2

.global lbl_804DC268
lbl_804DC268:
	.4byte 0xC1180000
.global lbl_804DC26C
lbl_804DC26C:
	.4byte 0x4111999A
.global lbl_804DC270
lbl_804DC270:
	.4byte 0x41880000
.global lbl_804DC274
lbl_804DC274:
	.4byte 0x43B65777
.global lbl_804DC278
lbl_804DC278:
	.4byte 0x42198D06
.global lbl_804DC27C
lbl_804DC27C:
	.4byte 0x3D5566CF
.global lbl_804DC280
lbl_804DC280:
	.4byte 0xC1600000
.global lbl_804DC284
lbl_804DC284:
	.4byte 0xC0CB3333
.global lbl_804DC288
lbl_804DC288:
	.4byte 0x403147AE
.global lbl_804DC28C
lbl_804DC28C:
	.4byte 0x410E6666
.global lbl_804DC290
lbl_804DC290:
	.4byte 0x3FA00000
.global lbl_804DC294
lbl_804DC294:
	.4byte 0x3D0B4396
.global lbl_804DC298
lbl_804DC298:
	.4byte 0xC0A00000
.global lbl_804DC29C
lbl_804DC29C:
	.4byte 0xC0980001
.global lbl_804DC2A0
lbl_804DC2A0:
	.4byte 0xC0C80000
.global lbl_804DC2A4
lbl_804DC2A4:
	.4byte 0x41940000
.global lbl_804DC2A8
lbl_804DC2A8:
	.4byte 0x40200000
	.4byte 0x00000000
.global lbl_804DC2B0
lbl_804DC2B0:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_804DC2B8
lbl_804DC2B8:
	.4byte 0x00000000
	.4byte 0x00000000
