//
//  MSIMainboard.h
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MainboardProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MSIMainboard : NSObject<MainboardProtocol>
- (instancetype)initWithHoles:(int)holes;
@end

NS_ASSUME_NONNULL_END
