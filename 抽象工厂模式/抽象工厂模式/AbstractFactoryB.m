//
//  AbstractFactoryB.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/4.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "AbstractFactoryB.h"
#import "AMDCPU.h"
#import "MSIMainboard.h"

@implementation AbstractFactoryB
- (id<CPUProtocol>)createCPU {
    return [[AMDCPU alloc] initWithPins:939];
}
- (id<MainboardProtocol>)createMainboard {
    return [[MSIMainboard alloc] initWithHoles:939];
}
@end
