//
//  Facade.m
//  普通处理法
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "Facade.h"
#import "ModuleA.h"
#import "ModuleB.h"
#import "ModuleC.h"

@implementation Facade
+ (void)test {
    id<ModuleAProtocol> moduleA = [[ModuleA alloc] init];
    [moduleA testModuleA];
    
    id<ModuleBProtocol> moduleB = [[ModuleB alloc] init];
    [moduleB testModuleB];
    
    id<ModuleCProtocol> moduleC = [[ModuleC alloc] init];
    [moduleC testModuleC];
}
@end
