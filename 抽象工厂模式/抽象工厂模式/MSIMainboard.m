//
//  MSIMainboard.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "MSIMainboard.h"

@interface MSIMainboard ()
@property (nonatomic,assign) int holes;
@end

@implementation MSIMainboard
- (instancetype)initWithHoles:(int)holes {
    self = [super init];
    if (self) {
        self.holes = holes;
    }
    return self;
}
- (void)installCPU {
    NSLog(@"MSIMainboard,holes = %d",self.holes);
}
@end
