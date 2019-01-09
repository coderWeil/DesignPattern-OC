//
//  main.m
//  原型模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OrderBusiness.h"
#import "EnterpriseOrder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EnterpriseOrder *eOrder = [[EnterpriseOrder alloc] init];
        eOrder.customerName = @"小明";
        eOrder.productId = @"p001";
        [eOrder setOrderProductNum:1200];
        
        OrderBusiness *ob = [[OrderBusiness alloc] init];
        [ob saveOrder:eOrder];
    }
    return 0;
}
