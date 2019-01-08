//
//  IntelCPU.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "IntelCPU.h"

@interface IntelCPU ()
@property (nonatomic,assign) int pins;
@end

@implementation IntelCPU
- (instancetype)initWithPins:(int)pins {
    self = [super init];
    if (self) {
        self.pins = pins;
    }
    return self;
}
- (void)caculate {
    NSLog(@"intel cpu,针脚数目 pins = %d",self.pins);
}
@end
