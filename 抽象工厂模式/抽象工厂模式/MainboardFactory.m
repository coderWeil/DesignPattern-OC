//
//  MainboardFactory.m
//  抽象工厂模式
//
//  Created by weil on 2019/1/3.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "MainboardFactory.h"
#import "GAMainboard.h"
#import "MSIMainboard.h"

@implementation MainboardFactory
+ (id<MainboardProtocol>)createMainboard:(int)type {
    id<MainboardProtocol> mainboard = nil;
    if (type == 1) {
        mainboard = [[GAMainboard alloc] initWithHoles:1156];
    }else if (type == 2) {
        mainboard = [[MSIMainboard alloc] initWithHoles:939];
    }
    return mainboard;
}
@end
