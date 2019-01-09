//
//  BasePerson.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "BasePerson.h"

@interface BasePerson ()
@property (nonatomic,strong,readwrite) id<MediatorProtocol> mediator;
@property (nonatomic,copy,readwrite) NSString *name;
@end

@implementation BasePerson
- (instancetype)initWithName:(NSString *)name mediator:(id<MediatorProtocol>)mediator {
    self = [super init];
    if (self) {
        self.name = name;
        self.mediator = mediator;
    }
    return self;
}
- (void)constactWithMessage:(NSString *)message {
    [self.mediator constactWithMessage:message person:self];
}

@end
