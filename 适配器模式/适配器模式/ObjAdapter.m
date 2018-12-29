//
//  ObjAdapter.m
//  适配器模式
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "ObjAdapter.h"
#import "Adaptee.h"

@interface ObjAdapter ()
@property (nonatomic,strong) Adaptee *adaptee;
@end

@implementation ObjAdapter
- (instancetype)initWith:(Adaptee *)adaptee {
    self = [super init];
    if (self) {
        self.adaptee = adaptee;
    }
    return self;
}
- (void)targetMethod {
    [self.adaptee existMethod];
}
@end
