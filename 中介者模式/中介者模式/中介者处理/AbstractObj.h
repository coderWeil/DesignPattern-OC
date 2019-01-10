//
//  AbstractObj.h
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

//抽象的对象类
NS_ASSUME_NONNULL_BEGIN

@interface AbstractObj : NSObject
@property (nonatomic,weak,readonly) id<Mediator> mediator;
@property (nonatomic,copy,readonly) NSString *name;
@property (nonatomic,copy,readonly) NSString *message;
- (instancetype)initWithName:(NSString *)name mediator:(id<Mediator>)mediator;
- (void)receiveDataFromObj:(AbstractObj *)obj;
- (void)setObjMessage:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
