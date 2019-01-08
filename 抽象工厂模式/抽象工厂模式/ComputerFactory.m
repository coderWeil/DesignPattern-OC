//
//  ComputerFactory.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ComputerFactory.h"
#import "CPUFactory.h"
#import "MainboardFactory.h"

@interface ComputerFactory ()
@property (nonatomic,strong) id<CPUProtocol> cpuFactory;
@property (nonatomic,strong) id<MainboardProtocol> mainboardFactory;
@end

@implementation ComputerFactory
- (void)makeComputerWithCpuType:(int)cpuType mainboardType:(int)mainboardType {
    [self prepareComputerWithCpuType:cpuType mainboardType:mainboardType];
}
- (void)prepareComputerWithCpuType:(int)cpuType mainboardType:(int)mainboardType {
    self.cpuFactory = [CPUFactory createCPU:cpuType];
    self.mainboardFactory = [MainboardFactory createMainboard:mainboardType];
    [self.cpuFactory caculate];
    [self.mainboardFactory installCPU];
}
- (void)makeComputerWithAbstractFactory:(id<AbstractFactoryProtocol>)abstractFactory {
    [self prepareComputerWithAbstractFactory:abstractFactory];
}
- (void)prepareComputerWithAbstractFactory:(id<AbstractFactoryProtocol>)abstractFactory {
    self.cpuFactory = [abstractFactory createCPU];
    self.mainboardFactory = [abstractFactory createMainboard];
    [self.cpuFactory caculate];
    [self.mainboardFactory installCPU];
}
@end
