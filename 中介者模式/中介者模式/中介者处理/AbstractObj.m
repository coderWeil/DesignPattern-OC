//
//  AbstractObj.m
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "AbstractObj.h"

@interface AbstractObj ()
@property (nonatomic,weak,readwrite) id<Mediator> mediator;
@property (nonatomic,copy,readwrite) NSString *name;
@property (nonatomic,copy,readwrite) NSString *message;
@end

@implementation AbstractObj
- (instancetype)initWithName:(NSString *)name mediator:(id<Mediator>)mediator {
    self = [super init];
    if (self) {
        self.name = name;
        self.mediator = mediator;
    }
    return self;
}
- (void)receiveDataFromObj:(AbstractObj *)obj {
    NSLog(@"%@接收到来自%@的消息:%@",self.name,obj.name,obj.message);
}
- (void)setObjMessage:(NSString *)message {
    self.message = message;
}

@end
