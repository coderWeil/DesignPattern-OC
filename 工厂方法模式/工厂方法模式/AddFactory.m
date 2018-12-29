//
//  AddFactory.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "AddFactory.h"
#import "AddOperator.h"

@implementation AddFactory
- (id<OperatorProtocol>)createOperator {
    return [[AddOperator alloc] init];
}
@end
