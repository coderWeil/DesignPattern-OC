//
//  IOSObj.m
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "IOSObj.h"

@implementation IOSObj
- (void)setObjMessage:(NSString *)message {
    NSString *msg = [NSString stringWithFormat:@"iOS开发预估的开发deadline：%@",message];
    [super setObjMessage:msg];
}
@end
