
#include "ascii_to_usb_usage.h"


//
// Public variables implementation
//

//
// Private function definition
//

//
// Private variables implementation
//

typedef struct {
    char usb_code;
    char is_shift;
    char is_altgr;
}usb_code_modifier;

// use this table by something like: result = USB_TABLE['a'];

static usb_code_modifier USB_TABLE_AZERTY[] = 
{
    // For 0x20 first characters, no need to set
    // 0x00-0x08
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    // 0x09 - 0x0F
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    // 0x10 - 0x18
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    // 0x19 - 0x1F
    {0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
    // Starting with space
    // 0x20 - 0x27
    {0x2C,0,0},{0x38,0,0},{0x20,0,0},{0x20,0,1},{0x30,0,0},{0x34,1,0},{0x1E,0,0},{0x21,0,0},
    // 0x28 - 0x2F
    {0x22,0,0},{0x2D,0,0},{0x32,0,0},{0x2E,1,0},{0x10,0,0},{0x23,0,0},{0x36,1,0},{0x37,1,0},
    // 0x30 - 0x37
    {0x27,1,0},{0x1E,1,0},{0x1F,1,0},{0x20,1,0},{0x21,1,0},{0x22,1,0},{0x23,1,0},{0x24,1,0},
    // 0x38 - 0x3F
    {0x25,1,0},{0x26,1,0},{0x37,0,0},{0x36,0,0},{0xC5,0,0},{0x2E,0,0},{0xC6,0,0},{0x10,1,0},
    // 0x40 - 0x47
    {0x27,0,1},{0x14,1,0},{0x05,1,0},{0x06,1,0},{0x07,1,0},{0x08,1,0},{0x09,1,0},{0x0A,1,0},
    // 0x48 - 0x4F
    {0x0B,1,0},{0x0C,1,0},{0x0D,1,0},{0x0E,1,0},{0x0F,1,0},{0x33,1,0},{0x11,1,0},{0x12,1,0},
    // 0x50 - 0x57
    {0x13,1,0},{0x04,1,0},{0x15,1,0},{0x16,1,0},{0x17,1,0},{0x18,1,0},{0x19,1,0},{0x1D,1,0},
    // 0x58 - 0x5F
    {0x1B,1,0},{0x1C,1,0},{0x1A,1,0},{0x22,0,1},{0x25,0,1},{0x2D,0,1},{0x2F,0,0},{0x25,0,0},
    // 0x60 - 0x67
    {0x24,0,1},{0x14,0,0},{0x05,0,0},{0x06,0,0},{0x07,0,0},{0x08,0,0},{0x09,0,0},{0x0A,0,0},
    // 0x68 - 0x6F
    {0x0B,0,0},{0x0C,0,0},{0x0D,0,0},{0x0E,0,0},{0x0F,0,0},{0x33,0,0},{0x11,0,0},{0x12,0,0},
    // 0x70 - 0x77
    {0x13,0,0},{0x04,0,0},{0x15,0,0},{0x16,0,0},{0x17,0,0},{0x18,0,0},{0x19,0,0},{0x1D,0,0},
    // 0x78 - 0x7E
    {0x1B,0,0},{0x1C,0,0},{0x1A,0,0},{0x21,0,1},{0x23,0,1},{0x2E,0,1},{0x1F,0,1},
};

static const char acii_test[] = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^^_`abcdefghijklmnopqrstuvwxyz{|}~";

//
// Public Function Implementation
//

char ascii_to_usb(char character, unsigned char * usageType, char* isShift, char* isAltGr){
    usb_code_modifier code;
    
    if (character >= 0x20 && character <= 0x7E){
        code = USB_TABLE_AZERTY[(unsigned char)character];
    }
    else{
        code.is_altgr = 0;
        code.is_shift = 0;
        code.usb_code = 0;
    }
    
    *usageType = code.usb_code;
    *isShift = code.is_shift;
    *isAltGr = code.is_altgr;
    
    if(code.usb_code != 0){
        return 1;
    }
    return 0;
}


// Private Function Implementation

