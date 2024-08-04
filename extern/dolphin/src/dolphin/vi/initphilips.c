#include <dolphin/vi.h>

#include "__vi.h"

static u8 ntscRange0[4] = { 0x00, 0x00, 0x19, 0x1D };
static u8 ntscRange1[38] = {
    0x2D, 0x76, 0xA5, 0x2A,
    0x2E, 0x2E, 0x00, 0x15,
    0x3F, 0x1F, 0x7C, 0xF0,
    0x21, 0x55, 0x56, 0x67,
    0x58, 0x20, 0xF9, 0x00,
    0xB0, 0x14, 0x80, 0xE8,
    0x10, 0x42, 0x03, 0x03,
    0x05, 0x16, 0x04, 0x16,
    0x18, 0x38, 0x40, 0x00,
    0x00, 0x00
};
static u8 palRange0[4] = { 0x00, 0x00, 0x21, 0x1D };
static u8 palRange1[38] = {
    0x0C, 0x7D, 0xAF, 0x23,
    0x35, 0x35, 0x00, 0x06,
    0x2F, 0xCB, 0x8A, 0x09,
    0x2A, 0x55, 0x56, 0x67,
    0x58, 0x20, 0x05, 0x20,
    0xA0, 0x14, 0x80, 0xE8,
    0x10, 0x42, 0x03, 0x03,
    0x05, 0x16, 0x04, 0x16,
    0x18, 0x38, 0x40, 0x00,
    0x00, 0x00
};
static u8 value3a = 19;

static void send7120Data(u8 *range0, u8 *range1)
{
    u8 i;
    u8 buffer[2];

    for (i = 0; i < 38; i++) {
        buffer[0] = i;
        buffer[1] = 0;
        __VISendI2CData(0x88, buffer, 2);
    }
    for (i = 38; i < 42; i++) {
        buffer[0] = i;
        buffer[1] = range0[i - 38];
        __VISendI2CData(0x88, buffer, 2);
    }
    for (i = 42; i < 58; i++) {
        buffer[0] = i;
        buffer[1] = 0;
        __VISendI2CData(0x88, buffer, 2);
    }
    buffer[0] = 0x3A;
    buffer[1] = value3a;
    __VISendI2CData(0x88, buffer, 2);
    for (i = 90; i < 128; i++) {
        buffer[0] = i;
        buffer[1] = range1[i - 90];
        __VISendI2CData(0x88, buffer, 2);
    }
}

void __VIInitPhilips(void)
{
    __VIInitI2C();
    send7120Data(ntscRange0, ntscRange1);
}
