//
//  objc-hmac.mm
//  objc
//
//  Created by Julian Lettner on 10/7/15.
//
//

#include "objc-hmac.h"

void hmac_init(HMAC_MD5_CTX* ctx) {
    uint64_t secret = 7; // TODO(yln): safely get this
//    _sasl_hmac_md5_init(ctx, (const unsigned char*)&secret, sizeof(uint64_t));
    // TODO(yln): we could precalculate intermidate state from key for performance.
}

void hmac_update(HMAC_MD5_CTX* ctx, const void* ptr, size_t size) {
    
}

uint64_t hmac_final(HMAC_MD5_CTX* ctx) {
    return 7;
}
