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
    _sasl_hmac_md5_init(ctx, (const uint8_t*) &secret, sizeof(uint64_t));
    // TODO(yln): we could precalculate intermidate state from key for performance.
}

void hmac_update(HMAC_MD5_CTX* ctx, const void* ptr, size_t size) {
    _sasl_hmac_md5_update(ctx, (const uint8_t*) ptr, size);
}

uint64_t hmac_final(HMAC_MD5_CTX* ctx) {
    uint64_t digest[2]; // 2 * 8 = 16 = HMAC_MD5_SIZE
    _sasl_hmac_md5_final((uint8_t*) digest, ctx);
    return digest[0] ^ digest[1];
}
