//
//  OrderBusiness.h
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface OrderBusiness : NSObject
- (void)saveOrder:(id<OrderProtocol>)order;
@end

NS_ASSUME_NONNULL_END
