#include <sysdolphin/baselib/baselib_unknown_001.h>
#include <dolphin/gecko.h>
#include <string.h>
#include <dolphin/card.h>
#include <dolphin/os/OSInterrupt.h>
#include <cstring.h>

/* 004DB76C */ extern u32 lbl_804DEB8C;
/* 004DB768 */ extern u32 lbl_804DEB88;
/* 004D45A8 */ extern u8 lbl_804D79C8;
/* 004D45A4 */ extern s32 lbl_804D79C4;
/* 004D45A0 */ extern s32 lbl_804D79C0;
/* 004D459C */ extern unk_t lbl_804D79BC;
/* 004D4598 */ extern u16* lbl_804D79B8;
/* 004D4590 */ extern unk_t lbl_804D79B0[2];
/* 004D458C */ extern unk_t lbl_804D79AC;

/* 004D457C */ extern unk_t lbl_804D799C;
/* 004D4578 */ extern const s32 lbl_804D7998;
/* 004D4574 */ extern unk_t lbl_804D7994;
/* 004D4570 */ extern unk_t lbl_804D7990;
/* 004D456C */ extern unk_t lbl_804D798C;
/* 004D4568 */ extern unk_t lbl_804D7988;
/* 004D4564 */ extern const s32 lbl_804D7984;
/* 004D4560 */ extern const s32 lbl_804D7980;
/* 0042E218 */ extern u32 lbl_80431638[16];
/* 0042DC70 */ extern const u32 lbl_80431090[362];
/* 0042D7B0 */ extern s32 lbl_80430BD0[13];
/* 003B37C4 */ extern s32 func_803B6BE4(u16*, s32, s32);
/* 003B3400 */ extern void func_803B6820(s32, s32, s32, s32);
/* 003B2D94 */ extern void func_803B61B4(unk_t);
/* 003B2A80 */ extern void func_803B5EA0(s32);
/* 003B2950 */ extern u8 func_803B5D70(s32, s32);
/* 003B282C */ extern s32 func_803B5C4C(s32);
/* 003B280C */ extern void func_803B5C2C(s32);
/* 003B1DA8 */ extern s32 func_803B51C8(s32, unk_t, unk_t, unk_t, unk_t);
/* 003B1944 */ extern void func_803B4D64(u8, u8);
/* 003B160C */ extern void func_803B4A2C();
/* 003B12B4 */ extern void func_803B46D4();
/* 003B08B8 */ extern void func_803B3CD8(s32);
/* 003B034C */ extern void func_803B376C(unk_t);
/* 003AFFE8 */ extern void func_803B3408(s32, s32, s32, s32);
/* 003AFF78 */ extern void func_803B3398(s32, s32);
/* 003AFF24 */ extern void func_803B3344(s8);
/* 003AFDAC */ extern s32 func_803B31CC(unk_t, s32);
/* 003AFC0C */ extern s32 func_803B302C(s8, u8);
/* 003AFB80 */ extern s32 func_803B2FA0(u8*, size_t);
/* 003AF9E4 */ extern u8 func_803B2E04(u8, u8);
/* 003AF700 */ extern void func_803B2B20(u8*, size_t, size_t);
/* 003AF6BC */ extern BOOL func_803B2ADC(unk_t);
/* 003AF62C */ extern s32 func_803B2A4C(s32, s32, s32, s32);
/* 003AF5B8 */ extern s32 func_803B29D8(s32, s32, s32, s32);
/* 003AF508 */ extern s32 func_803B2928(s32, unk_t, s32, s32, s32);
/* 003AF44C */ extern s32 func_803B286C(s32, s32, unk_t, s32, s32, s32);
/* 003AF3D4 */ extern s32 func_803B27F4(s32, s32, s32, s32, s32);
/* 003AF2AC */ extern s32 func_803B26CC(unk_t, s32, s32, s32, s32);
/* 003AF254 */ extern s32 func_803B2674(unk_t);
/* 003AF130 */ extern s32 func_803B2550(unk_t, s32, s32);
/* 003AF0C4 */ extern void func_803B24E4(unk_t, s32, s32, s32);
/* 003AEF54 */ extern void func_803B2374();
/* 003AEDC8 */ extern s32 func_803B21E8(s32, s32);
/* 003AEB58 */ extern s32 func_803B1F78(unk_t, s32, s32, s32, s32);
/* 003ADF18 */ extern s32 func_803B1338(unk_t, BOOL);
/* 003ADA7C */ extern s32 func_803B0E9C(unk_t, unk_t, unk_t, s32, s32);
/* 003ACD00 */ extern s32 func_803B0120(unk_t, s32, s32, s32, s32);
/* 003ABFD0 */ extern s32 func_803AF3F0(unk_t, s32, s32, s32, s32);
/* 003AB3D8 */ extern s32 func_803AE7F8(unk_t, s32, s32, s32, s32);
/* 003AAB70 */ extern s32 func_803ADF90(unk_t, s32, unk_t, s32, s32);
/* 003AAA2C */ extern s32 func_803ADE4C(s32, u8*, s32);
/* 003A9D4C */ extern s32 func_803AD16C(unk_t, s32*);
/* 003A9BA0 */ extern s32 func_803ACFC0(unk_t, s32, s32, unk_t, s32, s32, s32);
/* 003A9BA0 */ extern s32 func_803ACFC0(unk_t, s32, s32, unk_t, s32, s32, s32);
/* 003A9B10 */ extern s32 func_803ACF30(unk_t, s32, s32, s32);
/* 003A9938 */ extern s32 func_803ACD58(unk_t, unk_t, unk_t);
/* 003A9938 */ extern s32 func_803ACD58(unk_t, unk_t, unk_t);
/* 003A97EC */ extern s32 func_803ACC0C(unk_t, s32, s32, s32, s32, s32);
/* 003A97EC */ extern s32 func_803ACC0C(unk_t, s32, s32, s32, s32, s32);
/* 003A97C8 */ extern s32 func_803ACBE8(unk_t, s32);
/* 003A9754 */ extern s32 func_803ACB74(s32, s32);
/* 003A93BC */ extern s32 func_803AC7DC(unk_t, s32, u32);
/* 003A93BC */ extern s32 func_803AC7DC(unk_t, s32, u32);
/* 003A9298 */ extern s32 func_803AC6B8(unk_t, s32);
/* 003A9214 */ extern s32 func_803AC634(unk_t, s32);
/* 003A9214 */ extern s32 func_803AC634(unk_t, s32);
/* 003A9138 */ extern void func_803AC558(s32, unk_t);
/* 003A8FD8 */ extern void func_803AC3F8(unk_t, u8*, s32);
/* 003A8FD8 */ extern void func_803AC3F8(unk_t, u8*, s32);
/* 003A8FC0 */ extern void func_803AC3E0(s32, s32, s32, s32, s32);
/* 003A8F20 */ extern s32 func_803AC340(s32);
/* 003A8F20 */ extern s32 func_803AC340(s32);
/* 003A8F14 */ extern void func_803AC334();
/* 003A8EC0 */ extern void func_803AC2E0();
/* 003A8EB4 */ extern void func_803AC2D4();
/* 003A8E84 */ extern void func_803AC2A4(s32, u8*);
/* 003A8D48 */ extern s32 func_803AC168(s32*, u8*);
/* 003A8D48 */ extern s32 func_803AC168(s32*, u8*);
/* 003A7628 */ extern void func_803AAA48();
/* 003A7370 */ extern s32 func_803AA790();
/* 003A607C */ extern void lbl_803A949C(unk_t);
