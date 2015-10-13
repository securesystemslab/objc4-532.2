//
//  objc-defense.h
//  objc
//
//  Created by Julian Lettner on 10/13/15.
//
//

#ifndef objc_defense_h
#define objc_defense_h

#include <unordered_map>

typedef struct method_list method_list_t;

extern std::unordered_map<method_list_t*, uint32_t> hashes;

#endif /* objc_defense_h */
