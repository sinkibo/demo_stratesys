//
// HYBUser.m
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

#import "HYBUser.h"
#import "NSValueTransformer+MTLPredefinedTransformerAdditions.h"

#import "HYBCurrency.h"
#import "HYBLanguage.h"
#import "HYBAddress.h"


@implementation HYBUser

+ (instancetype)userWithParams:(NSDictionary*)params {

NSError *error = nil;
HYBUser *object = [MTLJSONAdapter modelOfClass:[HYBUser class] fromJSONDictionary:params error:&error];

if (error) {
    NSLog(@"Couldn't convert JSON to model HYBUser");
    return nil;
}

return object;
}

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
   return @{
@"firstName" : @"firstName",
@"lastName" : @"lastName",
@"displayUid" : @"displayUid",
@"roles" : @"roles",
@"currency" : @"currency",
@"language" : @"language",
@"title" : @"title",
@"titleCode" : @"titleCode",
@"defaultAddress" : @"defaultAddress"
};
}

+ (NSValueTransformer *)currencyJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBCurrency class]];
}

+ (NSValueTransformer *)languageJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBLanguage class]];
}

+ (NSValueTransformer *)defaultAddressJSONTransformer {
return [NSValueTransformer mtl_JSONDictionaryTransformerWithModelClass:[HYBAddress class]];
}



@end