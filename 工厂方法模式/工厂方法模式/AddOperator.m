//
//  AddOperator.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "AddOperator.h"

@implementation AddOperator
- (void)operatorAction:(int)a andB:(int)b {
    NSLog(@"\n加法结果： %d",a + b);
}
@end
