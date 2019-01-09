//
//  HouseOwner.m
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "HouseOwner.h"

@implementation HouseOwner
- (void)houseOwnerMessage:(NSString *)message {
    NSLog(@"房东：%@，收到来自租客的信息：%@",self.name,message);
}
@end
