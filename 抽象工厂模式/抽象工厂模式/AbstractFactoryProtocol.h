//
//  AbstractFactoryProtocol.h
//  抽象工厂模式
//
//  Created by weil on 2019/1/4.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPUProtocol.h"
#import "MainboardProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFactoryProtocol <NSObject>
- (id<CPUProtocol>)createCPU;
- (id<MainboardProtocol>)createMainboard;
@end

NS_ASSUME_NONNULL_END
