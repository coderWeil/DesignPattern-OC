//
//  SubFactory.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "SubFactory.h"
#import "SubOperator.h"

@implementation SubFactory
- (id<OperatorProtocol>)createOperator {
    return [[SubOperator alloc] init];
}
@end
