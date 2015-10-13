//
//  objc-defense.h
//  objc
//
//  Created by Julian Lettner on 10/13/15.
//
//

#ifndef objc_defense_h
#define objc_defense_h

#include <stddef.h>

extern void updateHMAC(const void* ptr, size_t size, const void* cls);
extern void verifyHMAC(const void* ptr, size_t size, const void* cls);

#endif /* objc_defense_h */
