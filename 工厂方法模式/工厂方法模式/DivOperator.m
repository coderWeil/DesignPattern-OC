//
//  DivOperator.m
//  工厂方法模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "DivOperator.h"

@implementation DivOperator
- (void)operatorAction:(int)a andB:(int)b {
    if (b == 0) {
        NSLog(@"无效的a参数");
    }else {
        NSLog(@"\n除法结果： %d",a / b);
    }
}
@end
