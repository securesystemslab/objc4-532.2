//
//  objc-hmac.mm
//  objc
//
//  Created by Julian Lettner on 10/7/15.
//
//

#include "objc-hmac.h"

// cls points to struct class_t
uint64_t computeHMAC(const void* ptr, size_t size) {
    // TODO(yln)
    return 7;
}

uint64_t combineHMAC(uint64_t h1, uint64_t h2) {
    // TODO(yln)
    return h1 + h2;
}

uint64_t combineHMAC(uint64_t* elements, size_t count) {
    // TODO(yln)
    uint64_t x = 0;
    for (size_t i = 0; i < count; ++i) {
        x += elements[i];
    }
    return x;
}
