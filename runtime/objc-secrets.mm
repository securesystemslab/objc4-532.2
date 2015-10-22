//
//  objc-secrets.mm
//  objc
//
//  Created by Julian Lettner on 10/22/15.
//
//

#include "objc-secrets.h"

uint64_t get_secret_cls() {
    return 11;
}

uint64_t get_secret_sel() {
    return 13;
}

uint64_t get_secret_imp() {
    return 15;
}

uint64_t get_secret_slow_path() {
    return 17;
}
