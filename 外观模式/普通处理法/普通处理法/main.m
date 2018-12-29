//
//  main.m
//  普通处理法
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Facade.h"
//#import "ModuleA.h"
//#import "ModuleB.h"
//#import "ModuleC.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//       id<ModuleAProtocol> moduleA = [[ModuleA alloc] init];
//        [moduleA testModuleA];
//        id<ModuleBProtocol> moduleB = [[ModuleB alloc] init];
//        [moduleB testModuleB];
//        id<ModuleCProtocol> moduleC = [[ModuleC alloc] init];
//        [moduleC testModuleC];
        
        [Facade test];
       
    }
    return 0;
}
