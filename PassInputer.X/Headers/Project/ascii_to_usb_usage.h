/* 
 * File:   ascii_to_usb_usage.h
 * Author: root
 *
 * Created on November 17, 2018, 2:14 PM
 */

#ifndef ASCII_TO_USB_USAGE_H
#define	ASCII_TO_USB_USAGE_H

#ifdef	__cplusplus
extern "C" {
#endif

    // Returns 1 if character is found, 0 if not
    char ascii_to_usb(char character, unsigned char * usgeType, char* isShift, char* isAltGr);


#ifdef	__cplusplus
}
#endif

#endif	/* ASCII_TO_USB_USAGE_H */

