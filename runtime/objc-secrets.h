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

extern uint8_t* _objc_get_secret_cache_table_ptr();
extern uint64_t get_secret_slow_path();

#endif /* objc_secrets_h */
