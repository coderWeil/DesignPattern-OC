//
//  main.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddFactory.h"
#import "SubFactory.h"
#import "MultiFactory.h"
#import "DivFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id<OperatorFactoryProtocol> addFactory = [[AddFactory alloc] init];
        id<OperatorFactoryProtocol> subFactory = [[SubFactory alloc] init];
        id<OperatorFactoryProtocol> multiFactory = [[MultiFactory alloc] init];
        id<OperatorFactoryProtocol> divFactory = [[DivFactory alloc] init];
        
        id<OperatorProtocol> addOperator = [addFactory createOperator];
        id<OperatorProtocol> subOperator = [subFactory createOperator];
        id <OperatorProtocol> multiOperator = [multiFactory createOperator];
        id <OperatorProtocol> divOperator = [divFactory createOperator];
        
        [addOperator operatorAction:1 andB:2];
        [subOperator operatorAction:5 andB:0];
        [multiOperator operatorAction:10 andB:10];
        [divOperator operatorAction:100 andB:2];
        
    }
    return 0;
}
