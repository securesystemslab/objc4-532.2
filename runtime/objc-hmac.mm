//
//  objc-hmac.mm
//  objc
//
//  Created by Julian Lettner on 10/7/15.
//
//

#include "objc-hmac.h"

#include "objc-secrets.h"

void hmac_init(HMAC_MD5_CTX* ctx) {
    uint64_t secret = get_secret_slow_path(); // TODO(yln): not secure, because secret goes to memory
    _sasl_hmac_md5_init(ctx, (const uint8_t*) &secret, sizeof(uint64_t));
    secret = 0;
    // TODO(yln): we could precalculate intermidate state from key for performance.
}

void hmac_update(HMAC_MD5_CTX* ctx, const void* ptr, size_t size) {
    _sasl_hmac_md5_update(ctx, (const uint8_t*) ptr, size);
}

hash_t hmac_final(HMAC_MD5_CTX* ctx) {
    // 16 bytes == HMAC_MD5_SIZE, 64 bit: 2 * 8, 32 bit: 4 * 5
    hash_t digest[HMAC_MD5_SIZE / sizeof(hash_t)];
    _sasl_hmac_md5_final((uint8_t*) digest, ctx);
#if __LP64__  // 64 bit
    return digest[0] ^ digest[1];
#else         // 32 bit
    return digest[0] ^ digest[1] ^ digest[2] ^ digest[3];
#endif
}
