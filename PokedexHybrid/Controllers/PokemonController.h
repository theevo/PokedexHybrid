//
//  PokemonController.h
//  PokedexHybrid
//
//  Created by theevo on 3/24/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class Pokemon; // at @class is a lighter version of #import. allowed to reference but not actually do anything with it.

@interface PokemonController : NSObject

+ (void) fetchPokemonForSearchTerm:(NSString *) searchTerm completion:(void(^)(Pokemon *)) completion;

@end

NS_ASSUME_NONNULL_END
