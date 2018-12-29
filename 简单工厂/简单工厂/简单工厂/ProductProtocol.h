//
//  ProductProtocol.h
//  简单工厂
//
//  Created by weil on 2018/12/27.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ProductType) {
    ProductTypeIPhone,
    ProductTypeHuaWei,
    ProductTypeSanXing
};

@protocol ProductProtocol <NSObject>
@optional
- (void)createProduct;
@end

NS_ASSUME_NONNULL_END
