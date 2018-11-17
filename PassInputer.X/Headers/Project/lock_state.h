/* 
 * File:   lock_state.h
 * Author: root
 *
 * Created on November 17, 2018, 8:19 AM
 */

#ifndef LOCK_STATE_H
#define	LOCK_STATE_H

#ifdef	__cplusplus
extern "C" {
#endif

    // Lock state reads the buttons and times how long they were pressed
    // to detect a pattern
    // On boot, return value and state is set to 0
    // Has some LED blinking capabilities too.
    
    //
    // External Function Definition
    //
    
    void lock_state_init();
    
    char lock_state();



#ifdef	__cplusplus
}
#endif

#endif	/* LOCK_STATE_H */

