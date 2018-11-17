/*
 * File:   pass_state.c
 * Author: root
 *
 * Created on November 17, 2018, 8:18 AM
 */

#include "pass_state.h"
#include "io_mapping.h"
#include "buttons.h"


//
// Public variables implementation
//

//
// Private function definition
//


//
// Private variables implementation
//

// TODO : Define the real passwords in a .h that will not be sent to GIT.
static char pass_1[] = "Hello World! 1";
static char pass_2[] = "This is a password 2";
static char pass_3[] = " !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^^_`abcdefghijklmnopqrstuvwxyz{|}~";

#define DEBOUNCE_CYCLE_COUNT 20
static int debounceCounter;

#define DOUBLE_LETTER_WAIT 5

static BUTTON currentButton;
static int currentIndex;
static char * currentPass;
static char doubleWait;

enum {
    PASS_STATE_IDLE,
    PASS_STATE_DEBOUNCE,
    PASS_STATE_ACTIVE,
    PASS_STATE_WAIT_RELEASE
    
} PASS_STATE;



// 
// Public Function Implementation
//

void PASS_STATE_init(){
    
    // IO Initialization
    
    BUTTON_Enable(BUTTON_USB_DEVICE_HID_PASS_1);
    BUTTON_Enable(BUTTON_USB_DEVICE_HID_PASS_2);
    BUTTON_Enable(BUTTON_USB_DEVICE_HID_PASS_3);
    
    debounceCounter = 0;
    doubleWait = 0;
    
    PASS_STATE = PASS_STATE_IDLE;
    
}
    
char PASS_STATE_state(){
    
    char ret = 0;
    switch(PASS_STATE){
        
        case PASS_STATE_IDLE:
            
            if(BUTTON_IsPressed(BUTTON_USB_DEVICE_HID_PASS_1)){
                currentButton = BUTTON_USB_DEVICE_HID_PASS_1;
                PASS_STATE = PASS_STATE_DEBOUNCE;
                currentIndex = 0;
                currentPass = pass_1;
                debounceCounter = 0;
            }
            if(BUTTON_IsPressed(BUTTON_USB_DEVICE_HID_PASS_2)){
                currentButton = BUTTON_USB_DEVICE_HID_PASS_2;
                PASS_STATE = PASS_STATE_DEBOUNCE;
                currentIndex = 0;
                currentPass = pass_2;
                debounceCounter = 0;
            }
            if(BUTTON_IsPressed(BUTTON_USB_DEVICE_HID_PASS_3)){
                currentButton = BUTTON_USB_DEVICE_HID_PASS_3;
                PASS_STATE = PASS_STATE_DEBOUNCE;
                currentIndex = 0;
                currentPass = pass_3;
                debounceCounter = 0;
            }
            break;
        case PASS_STATE_DEBOUNCE:
            // Bounces might mean switch is open, so let's ignore that
            debounceCounter ++;
            if(debounceCounter > DEBOUNCE_CYCLE_COUNT){
                if(BUTTON_IsPressed(currentButton))
                PASS_STATE = PASS_STATE_ACTIVE;
            }
            break;
            
        case PASS_STATE_ACTIVE:
            ret = currentPass[currentIndex];
            if(ret == 0){
                // Null terminated strings
                PASS_STATE = PASS_STATE_WAIT_RELEASE;
            }
            currentIndex ++;
            break;
            
            
        case PASS_STATE_WAIT_RELEASE:
            if(!BUTTON_IsPressed(currentButton)){
                PASS_STATE = PASS_STATE_IDLE;
            }
            break;
    }
    
    return ret;
    
}
