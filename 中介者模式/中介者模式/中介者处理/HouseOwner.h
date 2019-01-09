//
//  HouseOwner.h
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "BasePerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface HouseOwner : BasePerson
- (void)houseOwnerMessage:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
