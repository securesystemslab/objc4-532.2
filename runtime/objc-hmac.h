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
#include <sasl/md5global.h>
#include <sasl/md5.h>
#include <sasl/hmac-md5.h>

extern void hmac_init(HMAC_MD5_CTX* ctx);
extern void hmac_update(HMAC_MD5_CTX* ctx, const void* ptr, size_t size);
extern uint64_t hmac_final(HMAC_MD5_CTX* ctx);

#endif /* objc_hmac_h */
