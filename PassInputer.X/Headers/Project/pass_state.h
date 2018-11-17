/* 
 * File:   pass_state.h
 * Author: root
 *
 * Created on November 17, 2018, 8:19 AM
 */

#ifndef PASS_STATE_H
#define	PASS_STATE_H

#ifdef	__cplusplus
extern "C" {
#endif

    // Pass state simply sends characters in order of a password.
    // For instance, if the pass is "Hello World", it will send 
    // successive ASCII values for 'H', 'e', 'l' ...
    
    
    //
    // External Function Definition
    //
    void PASS_STATE_init();
    
    char PASS_STATE_state();


#ifdef	__cplusplus
}
#endif

#endif	/* PASS_STATE_H */

