//
//  main.m
//  简单工厂
//
//  Created by weil on 2018/12/26.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductFactory.h"
#import "IPhoneProduct.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       //普通处理方法,这里只举出IPhoneProduct一个例子，其余的product使用也是类似
        id<ProductProtocol> iphoneProduct = [[IPhoneProduct alloc] init];
        [iphoneProduct createProduct];
        
        //简单工厂的处理方法
        id<ProductProtocol> product = [ProductFactory createProductWithType:ProductTypeSanXing];
        [product createProduct];
    }
    return 0;
}

