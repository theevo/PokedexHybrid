//
//  Pokemon.h
//  PokedexHybrid
//
//  Created by theevo on 3/24/20.
//  Copyright © 2020 Theo Vora. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pokemon : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, readonly) NSInteger identifier;
@property (nonatomic, copy, readonly) NSArray<NSString *> *abilities;

- (instancetype) initWithName: (NSString *) name identifier:(NSInteger) identifier abilities:(NSArray<NSString *> *)abilities;

@end

@interface Pokemon (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary <NSString *, id>*)dictionary;

@end

NS_ASSUME_NONNULL_END
