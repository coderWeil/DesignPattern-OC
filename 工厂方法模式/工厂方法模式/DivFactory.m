//
//  DivFactory.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "DivFactory.h"
#import "DivOperator.h"

@implementation DivFactory
- (id<OperatorProtocol>)createOperator {
    return [[DivOperator alloc] init];
}
@end
