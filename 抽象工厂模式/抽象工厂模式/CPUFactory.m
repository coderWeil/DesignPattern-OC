//
//  CPUFactory.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "CPUFactory.h"
#import "IntelCPU.h"
#import "AMDCPU.h"

@implementation CPUFactory
+ (id<CPUProtocol>)createCPU:(int)type {
    id<CPUProtocol> cpu = nil;
    if (type == 1) {
        cpu = [[IntelCPU alloc] initWithPins:1156];
    }else if (type == 2) {
        cpu = [[AMDCPU alloc] initWithPins:939];
    }
    return cpu;
}
@end
