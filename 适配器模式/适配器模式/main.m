//
//  main.m
//  适配器模式
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.
//    ObjAdapter *adapter = [[ObjAdapter alloc] initWith:[Adaptee new]];
//    [adapter targetMethod];
//#import "ObjAdapter.h"
//#import "Adaptee.h"

#import <Foundation/Foundation.h>
#import "ClassAdapter.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ClassAdapter *classAdapter = [[ClassAdapter alloc] init];
        [classAdapter targetMethod];
    
    }
    return 0;
}
