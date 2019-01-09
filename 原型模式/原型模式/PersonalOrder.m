//
//  PersonalOrder.m
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "PersonalOrder.h"

@interface PersonalOrder ()
@property (nonatomic,assign) int orderNum;
@end

@implementation PersonalOrder
- (void)setOrderProductNum:(int)num {
    self.orderNum = num;
}
- (int)getOrderProductNum {
    return self.orderNum;
}
- (NSString *)toString {
    NSString *des = [NSString stringWithFormat:@"\n本个人订单的订购人是：%@,\n订购产品是：%@，\n订购数量是:%d",self.customerName,self.productId,self.orderNum];
    return des;
}
- (id<OrderProtocol>)cloneOrder {
    PersonalOrder *order = [[PersonalOrder alloc] init];
    order.customerName = self.customerName;
    order.productId = self.productId;
    [order setOrderProductNum:self.orderNum];
    return order;
}
@end
