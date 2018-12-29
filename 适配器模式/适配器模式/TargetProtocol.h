//
//  TargetProtocol.h
//  适配器模式
//
//  Created by weil on 2018/12/28.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TargetProtocol <NSObject>
- (void)targetMethod;
@end

NS_ASSUME_NONNULL_END
