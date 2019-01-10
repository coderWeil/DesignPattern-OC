//
//  ConcreteMediator.m
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ConcreteMediator.h"
#import "ProductObj.h"
#import "IOSObj.h"
#import "AndroidObj.h"
#import "ServerObj.h"

@implementation ConcreteMediator
- (void)publishAssignment:(AbstractObj *)obj {
    if (obj == self.product) {
        [self.iOS receiveDataFromObj:obj];
        [self.android receiveDataFromObj:obj];
        [self.server receiveDataFromObj:obj];
    }else {
        [self.product receiveDataFromObj:obj];
    }
}
@end
