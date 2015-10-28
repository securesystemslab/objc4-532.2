//
//  objc-secrets.mm
//  objc
//
//  Created by Julian Lettner on 10/22/15.
//
//

#include "objc-secrets.h"

#include "objc-private.h"
#include <ctime>

#define RANDOM_TABLE_SIZE (6 * 4 + 1048576 * 8) // 1048576 = 2^20

static uint8_t* randomTable;

//__attribute__((constructor)) static
void secrets_init() {
    randomTable = (uint8_t*) _malloc_internal(RANDOM_TABLE_SIZE);
    
    srand(time(NULL));
    for (uint64_t i = 0; i < RANDOM_TABLE_SIZE; ++i) {
        randomTable[i] = (uint8_t)rand();
    }
}

extern "C"
uint8_t* _objc_get_secret_cache_table_ptr() {
    return randomTable;
}

uint64_t get_secret_slow_path() {
    return 17;
}
