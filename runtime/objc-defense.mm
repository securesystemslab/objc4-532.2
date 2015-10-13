//
//  objc-defense.mm
//  objc
//
//  Created by Julian Lettner on 10/13/15.
//
//

#include "objc-defense.h"

#include <unordered_map>

static std::unordered_map<const void*, uint32_t> hashes;

void updateHMAC(const void* ptr, size_t size, const void* cls) {
    // TODO(yln)
}

void verifyHMAC(const void* ptr, size_t size, const void* cls) {
    // TODO(yln)
}
