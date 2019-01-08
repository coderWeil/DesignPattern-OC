//
//  GAMainboard.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "GAMainboard.h"

@interface GAMainboard ()
@property (nonatomic,assign) int holes;
@end

@implementation GAMainboard
- (instancetype)initWithHoles:(int)holes {
    self = [super init];
    if (self) {
        self.holes = holes;
    }
    return self;
}
- (void)installCPU {
    NSLog(@"GAMainboard,holes = %d",self.holes);
}
@end
