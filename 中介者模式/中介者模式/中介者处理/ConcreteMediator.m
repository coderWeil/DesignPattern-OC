//
//  ConcreteMediator.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator
- (void)constactWithMessage:(NSString *)message person:(BasePerson *)person {
    if (person == self.houseOwner) {
        [self.tenant tenantMessage:message];
    }else if (person == self.tenant) {
        [self.houseOwner houseOwnerMessage:message];
    }
}
@end
