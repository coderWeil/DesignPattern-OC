//
//  main.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HouseOwner.h"
#import "NewTenant.h"
#import "ConcreteMediator.h"

//#import "Houser.h"
//#import "Tenant.h"
//#import "TenantTwo.h"
//#import "TenantThree.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {

//        Houser *houser = [[Houser alloc] initWithName:@"张三"];
//        Tenant *tenant = [[Tenant alloc] initWithName:@"李四"];
//        TenantThree *tenantThree = [[TenantThree alloc] initWithName:@"王五"];
//        TenantTwo *tenantTwo = [[TenantTwo alloc] initWithName:@"胡六"];
//
//        [houser contact:[tenant tenantMessage:@"请问你那有两室一厅的房子吗?"]];
//        [tenant contact:[houser houserMessage:@"你好，我这有两室一厅的房子"]];
//
//        [houser contact:[tenantTwo tenantMessage:@"请问你那有一室一厅的房子吗?"]];
//        [tenantTwo contact:[houser houserMessage:@"你好，我这没有一室一厅的房子"]];
//
//        [houser contact:[tenantThree tenantMessage:@"请问你那有两室一厅的房子吗?"]];
//        [tenantThree contact:[houser houserMessage:@"你好，我这没有两室一厅的房子"]];
        
        ConcreteMediator *mediator = [[ConcreteMediator alloc] init];
        HouseOwner *houseOwner = [[HouseOwner alloc] initWithName:@"张三" mediator:mediator];
        NewTenant *tenant = [[NewTenant alloc] initWithName:@"李四" mediator:mediator];
        mediator.houseOwner = houseOwner;
        mediator.tenant = tenant;
    
        [tenant constactWithMessage:@"请问您那有三室一厅出租吗？"];
        [houseOwner constactWithMessage:@"是的，请问您需要租吗？"];
    }
    return 0;
}
