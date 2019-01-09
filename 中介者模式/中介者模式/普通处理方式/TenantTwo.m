//
//  TenantTwo.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "TenantTwo.h"

@interface TenantTwo ()
@property (nonatomic,copy) NSString *name;
@end

@implementation TenantTwo
- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
- (void)contact:(NSString *)message {
    NSLog(@"%@",message);
}
- (NSString *)tenantMessage:(NSString *)message {
    return [NSString stringWithFormat:@"我是租房者%@ - %@",self.name,message];
}
@end

