//
//  ProductFactory.m
//  简单工厂
//
//  Created by weil on 2018/12/27.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "ProductFactory.h"
#import "IPhoneProduct.h"
#import "HuaWeiProduct.h"
#import "SanXingProduct.h"

@implementation ProductFactory
+ (id<ProductProtocol>)createProductWithType:(ProductType)type {
   __block id<ProductProtocol> product = nil;
    NSString *configPath = [[NSBundle mainBundle] pathForResource:@"config" ofType:@"plist"];
    NSArray<NSDictionary*> *productConfig = [NSArray arrayWithContentsOfFile:configPath];
    [productConfig enumerateObjectsUsingBlock:^(NSDictionary * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([obj[@"productType"] intValue] == type) {
            NSString *productName = obj[@"productName"];
            product = [[NSClassFromString(productName) alloc] init];
            *stop = YES;
        }
    }];
    
    return product;
}
@end
