//
//  Tenant.h
//  中介者模式
//
//  Created by weil on 2019/1/9.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Tenant : NSObject
- (instancetype)initWithName:(NSString *)name;
- (void)contact:(NSString *)message;
- (NSString *)tenantMessage:(NSString *)message;
@end

NS_ASSUME_NONNULL_END
