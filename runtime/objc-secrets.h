//
//  objc-secrets.h
//  objc
//
//  Created by Julian Lettner on 10/22/15.
//
//

#ifndef objc_secrets_h
#define objc_secrets_h

#include <stdint.h>

extern void secrets_init();

extern uint8_t* get_secret_cache();
extern uint8_t* get_secret_handlers();
extern uint8_t* get_secret_slow_path();

#endif /* objc_secrets_h */
