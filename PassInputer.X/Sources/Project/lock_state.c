/*
 * File:   lock_state.c
 * Author: root
 *
 * Created on November 17, 2018, 8:18 AM
 */

#include "lock_state.h"
#include "usb_hal_pic24f.h"



//
// Public variables implementation
//

//
// Private function definition
//

//
// Private variables implementation
//
char isLocked;

enum {
    LOCK_STATE_INIT,
    LOCK_STATE_WAITING,
    LOCK_STATE_UNLOCKED
    
}LOCK_STATE;


// 
// Public Function Implementation
//

void lock_state_init(){
    isLocked = 0;
    LOCK_STATE = LOCK_STATE_INIT;
}



// The execution state machine, returns 0 if state is locked, 1 if unlocked
char lock_state(){
    
    switch(LOCK_STATE){
        case LOCK_STATE_INIT:
            break;
        case LOCK_STATE_WAITING:
            break;
        case LOCK_STATE_UNLOCKED:
            break;
    }
    
    return isLocked;
}
