//
// HYBCartList.m
// [y] hybris Platform
//
// Copyright (c) 2000-2015 hybris AG
// All rights reserved.
//
// This software is the confidential and proprietary information of hybris
// ("Confidential Information"). You shall not disclose such Confidential
// Information and shall use it only in accordance with the terms of the
// license agreement you entered into with hybris.
//
// Warning:This file was auto-generated by OCC2Ojbc.
//

#import "HYBCartList.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBCart.h"


@implementation HYBCartList

+ (instancetype)cartListWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBCartList *object = [MTLJSONAdapter modelOfClass:[HYBCartList class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBCartList");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"carts" : @"carts"
};
}

+ (NSValueTransformer *)cartsJSONTransformer {
return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[HYBCart class]];
}






@end