//
//  IntelCPU.h
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPUProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface IntelCPU : NSObject<CPUProtocol>
- (instancetype)initWithPins:(int)pins;
@end

NS_ASSUME_NONNULL_END
