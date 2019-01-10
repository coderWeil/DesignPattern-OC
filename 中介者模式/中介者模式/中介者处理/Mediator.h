//
//  Mediator.h
//  中介者模式
//
//  Created by weil on 2019/1/10.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class AbstractObj;
@protocol Mediator <NSObject>
- (void)publishAssignment:(AbstractObj *)obj;
@end

NS_ASSUME_NONNULL_END
