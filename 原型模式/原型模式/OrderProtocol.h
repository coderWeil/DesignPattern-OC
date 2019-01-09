//
//  OrderProtocol.h
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol OrderProtocol <NSObject>
- (int)getOrderProductNum;
- (void)setOrderProductNum:(int)num;
- (NSString *)toString;
- (id<OrderProtocol>)cloneOrder;
@end

NS_ASSUME_NONNULL_END
