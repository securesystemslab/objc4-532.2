//
//  objc-defense.mm
//  objc
//
//  Created by Julian Lettner on 10/13/15.
//
//

#include "objc-defense.h"

#include <unordered_map>
#include <iostream>

static std::unordered_map<const void*, uint32_t> hashes;

static void abort(const void* ptr, const void* cls) {
    std::cerr << "Found corrupted structure " << ptr << " in class " << cls;
    std::cerr << "\nAborting!\n";
    abort();
}

static uint32_t computeHMAC(const void* ptr, size_t size, const void* cls) {
    return 7;
}

void updateHMAC(const void* ptr, size_t size, const void* cls) {
    uint32_t hash = computeHMAC(ptr, size, cls);
    hashes[ptr] = hash;
}

void verifyHMAC(const void* ptr, size_t size, const void* cls) {
    uint32_t hash = computeHMAC(ptr, size, cls);
    auto search = hashes.find(ptr);
    if (search == hashes.end() || search->second != hash)
        abort(ptr, cls);
}
