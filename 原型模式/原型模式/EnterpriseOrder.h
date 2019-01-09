//
//  EnterpriseOrder.h
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface EnterpriseOrder : NSObject<OrderProtocol>
@property (nonatomic,copy) NSString *customerName;
@property (nonatomic,copy) NSString *productId;
@end

NS_ASSUME_NONNULL_END
