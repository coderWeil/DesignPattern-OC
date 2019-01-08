//
//  AbstractFactoryA.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/4.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "AbstractFactoryA.h"
#import "IntelCPU.h"
#import "GAMainboard.h"

@implementation AbstractFactoryA
- (id<CPUProtocol>)createCPU {
    return [[IntelCPU alloc] initWithPins:1156];
}
- (id<MainboardProtocol>)createMainboard {
    return [[GAMainboard alloc] initWithHoles:1156];
}
@end
