//
//  ProductFactory.h
//  简单工厂
//
//  Created by weil on 2018/12/27.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProductFactory : NSObject
+ (id<ProductProtocol>)createProductWithType:(ProductType)type;
@end

NS_ASSUME_NONNULL_END
