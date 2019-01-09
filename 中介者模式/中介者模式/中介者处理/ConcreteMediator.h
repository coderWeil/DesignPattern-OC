//
//  ConcreteMediator.h
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "BasePerson.h"
#import "MediatorProtocol.h"
#import "HouseOwner.h"
#import "NewTenant.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteMediator : NSObject<MediatorProtocol>
@property (nonatomic,weak) HouseOwner *houseOwner;
@property (nonatomic,weak) NewTenant *tenant;
@end

NS_ASSUME_NONNULL_END
