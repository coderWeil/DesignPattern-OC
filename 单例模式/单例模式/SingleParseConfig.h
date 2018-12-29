//
//  SingleParseConfig.h
//  单例模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SingleParseConfig : NSObject
@property (nonatomic,copy) NSString *server;
+ (instancetype)sharedInstance;
@end

NS_ASSUME_NONNULL_END
