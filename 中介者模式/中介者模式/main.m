//
//  main.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteMediator.h"
#import "ProductObj.h"
#import "IOSObj.h"
#import "AndroidObj.h"
#import "ServerObj.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
        
        ProductObj *product = [[ProductObj alloc] initWithName:@"产品" mediator:mediator];
        IOSObj *iOS = [[IOSObj alloc] initWithName:@"iOS" mediator:mediator];
        AndroidObj *android = [[AndroidObj alloc] initWithName:@"android" mediator:mediator];
        ServerObj *server = [[ServerObj alloc] initWithName:@"server" mediator:mediator];
        
        mediator.product = product;
        mediator.iOS = iOS;
        mediator.android = android;
        mediator.server = server;
        
        [product setObjMessage:@"将要开发积分商城"];
        [mediator publishAssignment:product];
        
        [iOS setObjMessage:@"两个月"];
        [mediator publishAssignment:iOS];
        
        [android setObjMessage:@"两个半月"];
        [mediator publishAssignment:android];
        
        [server setObjMessage:@"一个月"];
        [mediator publishAssignment:server];
    }
    return 0;
}
