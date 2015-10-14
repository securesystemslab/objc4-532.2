//
//  objc-hmac.mm
//  objc
//
//  Created by Julian Lettner on 10/7/15.
//
//

#include "objc-hmac.h"

// cls points to struct class_t
uint64_t computeHMAC(const void* ptr, size_t size, const void* cls) {
    // TODO(yln)
    return 7;
}

uint64_t combineHMAC(uint64_t h1, uint64_t h2, const void* cls) {
    // TODO(yln)
    return h1 + h2;
}
