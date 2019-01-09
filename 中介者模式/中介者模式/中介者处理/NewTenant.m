//
//  NewTenant.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "NewTenant.h"

@implementation NewTenant
- (void)tenantMessage:(NSString *)message {
    NSLog(@"租客：%@，收到来自房东的信息：%@",self.name,message);
}
@end
