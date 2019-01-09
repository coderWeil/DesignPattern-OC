//
//  Houser.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "Houser.h"

@interface Houser ()
@property (nonatomic,copy) NSString *name;
@end

@implementation Houser
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
- (NSString *)houserMessage:(NSString *)message {
    return [NSString stringWithFormat:@"我是房东%@ - %@",self.name,message];
}

@end
