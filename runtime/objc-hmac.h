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
extern uint64_t computeHMAC(const void* ptr, size_t size, const void* cls);

// TODO(yln): this approach might be too slow
extern uint64_t combineHMAC(uint64_t h1, uint64_t h2, const void* cls);
extern uint64_t combineHMAC(uint64_t h1, uint64_t h2, uint64_t h3, const void* cls);

#endif /* objc_hmac_h */
