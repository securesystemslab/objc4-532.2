//
//  objc-secrets.mm
//  objc
//
//  Created by Julian Lettner on 10/22/15.
//
//

#include "objc-secrets.h"

#include "objc-private.h"
#include <stdlib.h>

static uint8_t secrets[48];

//__attribute__((constructor)) static
void secrets_init() {
//    // unsafe
//    srand(time(NULL));
//    for (uint64_t i = 0; i < RANDOM_TABLE_SIZE; ++i) {
//        randomTable[i] = (uint8_t)rand();
//    }

//    // much slower
//    int fd = open("/dev/urandom", O_RDONLY);
//    assert(fd > 0);
//    ssize_t size = read(fd, randomTable, RANDOM_TABLE_SIZE);
//    assert(size == RANDOM_TABLE_SIZE);
//    close(fd);

    // better (better distribution and slightly faster than rand)
    // https://stackoverflow.com/questions/2572366/how-to-use-dev-random-or-urandom-in-c
    arc4random_buf(secrets, sizeof(secrets));
}


// 16 bytes per key
// key 1: bytes  0-15 for fast path (method cache)
// key 2: bytes 16-31 for forward handlers
// key 3: bytes 32-47 for slow path

uint8_t* get_secret_cache()     { return secrets; }
uint8_t* get_secret_handlers()  { return secrets + 16; }
uint8_t* get_secret_slow_path() { return secrets + 32; }
