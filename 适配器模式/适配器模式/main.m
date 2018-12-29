//
//  main.m
//  适配器模式
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.


#import <Foundation/Foundation.h>
#import "ClassAdapter.h"
#import "ObjAdapter.h"
#import "Adaptee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //类适配器
        ClassAdapter *classAdapter = [[ClassAdapter alloc] init];
        [classAdapter targetMethod];
        
        //对象适配器
        ObjAdapter *adapter = [[ObjAdapter alloc] initWith:[Adaptee new]];
        [adapter targetMethod];
    
    }
    return 0;
}
