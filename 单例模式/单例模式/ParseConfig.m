//
//  ParseConfig.m
//  单例模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "ParseConfig.h"

@implementation ParseConfig
- (void)parseConfig {
    NSString *configPath = [[NSBundle mainBundle] pathForResource:@"Config" ofType:@"plist"];
    NSDictionary *configs = [NSDictionary dictionaryWithContentsOfFile:configPath];
    int status = [configs[@"status"] intValue];
    switch (status) {
        case 0:
            [self p_parseDebug:configs[@"Debug"]];
            break;
        case 1:
            [self p_parseDebug:configs[@"Pre"]];
            break;
        case 2:
            [self p_parseDebug:configs[@"Release"]];
            break;
    }
}
- (void)p_parseDebug:(NSDictionary *)config {
    self.server = config[@"Server"];
}
- (void)p_parsePre:(NSDictionary *)config {
    self.server = config[@"Server"];
}
- (void)p_parseRelease:(NSDictionary *)config {
    self.server = config[@"Server"];
}
@end
