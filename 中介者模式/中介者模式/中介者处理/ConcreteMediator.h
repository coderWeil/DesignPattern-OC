//
//  ConcreteMediator.h
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

NS_ASSUME_NONNULL_BEGIN

@class ProductObj,IOSObj,AndroidObj,ServerObj;
@interface ConcreteMediator : NSObject<Mediator>
@property (nonatomic,strong) ProductObj *product;
@property (nonatomic,strong) IOSObj *iOS;
@property (nonatomic,strong) AndroidObj *android;
@property (nonatomic,strong) ServerObj *server;

@end

NS_ASSUME_NONNULL_END
