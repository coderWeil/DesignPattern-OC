//
//  MultiFactory.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "MultiFactory.h"
#import "MultiOperator.h"

@implementation MultiFactory
- (id<OperatorProtocol>)createOperator {
    return [[MultiOperator alloc] init];
}
@end
