//
//  objc-hmac.h
//  objc
//
//  Created by Julian Lettner on 10/7/15.
//
//

#ifndef objc_hmac_h
#define objc_hmac_h

#include <stddef.h>
#include <stdint.h>

// cls points to struct class_t
extern uint32_t hmacByClass(const void* ptr, size_t size, const void* cls);

#endif /* objc_hmac_h */