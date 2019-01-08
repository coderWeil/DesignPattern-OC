//
//  ComputerFactory.h
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractFactoryProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface ComputerFactory : NSObject
- (void)makeComputerWithCpuType:(int)cpuType mainboardType:(int)mainboardType;
- (void)prepareComputerWithCpuType:(int)cpuType mainboardType:(int)mainboardType;

- (void)makeComputerWithAbstractFactory:(id<AbstractFactoryProtocol>)abstractFactory;
- (void)prepareComputerWithAbstractFactory:(id<AbstractFactoryProtocol>)abstractFactory;
@end

NS_ASSUME_NONNULL_END
