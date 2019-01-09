//
//  BasePerson.h
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MediatorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasePerson : NSObject
@property (nonatomic,strong,readonly) id<MediatorProtocol> mediator;
@property (nonatomic,copy,readonly) NSString *name;
- (instancetype)initWithName:(NSString *)name mediator:(id<MediatorProtocol>)mediator;
- (void)constactWithMessage:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
