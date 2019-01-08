//
//  main.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComputerFactory.h"
#import "AbstractFactoryB.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ComputerFactory *factory = [[ComputerFactory alloc] init];
//        [factory makeComputerWithCpuType:1 mainboardType:2];
        id<AbstractFactoryProtocol> abstractFactory = [[AbstractFactoryB alloc] init];
        [factory makeComputerWithAbstractFactory:abstractFactory];
    }
    return 0;
}
