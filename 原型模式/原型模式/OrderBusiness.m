//
//  OrderBusiness.m
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "OrderBusiness.h"
#import "PersonalOrder.h"
#import "EnterpriseOrder.h"

@implementation OrderBusiness
- (void)saveOrder:(id<OrderProtocol>)order {
    while ([order getOrderProductNum] > 500) {
        id<OrderProtocol> newOrder = [order cloneOrder];
        [newOrder setOrderProductNum:500];
        [order setOrderProductNum:[order getOrderProductNum] - 500];
        NSLog(@"\n拆分订单：%@",[newOrder toString]);
    }
    NSLog(@"\n订单：%@",[order toString]);
}
//    while ([order getOrderProductNum] > 500) {
//        id<OrderProtocol> newOrder = nil;
//        if ([order isMemberOfClass:[PersonalOrder class]]) {
//            PersonalOrder *pOrder= [[PersonalOrder alloc] init];
//            PersonalOrder *oldOrder = (PersonalOrder *)order;
//            pOrder.customerName = oldOrder.customerName;
//            pOrder.productId = oldOrder.productId;
//            [pOrder setOrderProductNum:500];
//            newOrder = pOrder;
//        }else if ([order isMemberOfClass:[EnterpriseOrder class]]) {
//            EnterpriseOrder *eOrder = [[EnterpriseOrder alloc] init];
//            EnterpriseOrder *oldOrder = (EnterpriseOrder *)order;
//            eOrder.customerName = oldOrder.customerName;
//            eOrder.productId = oldOrder.productId;
//            [eOrder setOrderProductNum:500];
//            newOrder = eOrder;
//        }
//        [order setOrderProductNum:[order getOrderProductNum] - 500];
//        NSLog(@"\n拆分订单：%@",[newOrder toString]);
//    }
//    NSLog(@"\n订单：%@",[order toString]);

@end
