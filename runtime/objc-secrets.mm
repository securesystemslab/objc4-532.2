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

#define RANDOM_TABLE_SIZE (6 * 4 + 1048576 * 8) // 1048576 = 2^20

static uint8_t* randomTable;

//__attribute__((constructor)) static
void secrets_init() {
    randomTable = (uint8_t*) _malloc_internal(RANDOM_TABLE_SIZE);

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
    arc4random_buf(randomTable, RANDOM_TABLE_SIZE);
}

extern "C"
uint8_t* _objc_get_secret_cache_table_ptr() {
    return randomTable;
}

uint64_t get_secret_slow_path() {
    return ((uint64_t*) randomTable)[7];
}
