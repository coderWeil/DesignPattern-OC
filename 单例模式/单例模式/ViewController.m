//
//  ViewController.m
//  单例模式
//
//  Created by weil on 2018/12/29.
//  Copyright © 2018 allyoga. All rights reserved.
//

#import "ViewController.h"
#import "ParseConfig.h"
#import "SingleParseConfig.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self p_normalMethod];
    [self p_singlePattern];
}

//- (void)p_normalMethod {
//    ParseConfig *config = [[ParseConfig alloc] init];
//    [config parseConfig];
//    NSLog(@"\n%@",config.server);
//}
- (void)p_singlePattern {
    NSLog(@"\n%@",[SingleParseConfig sharedInstance].server);
}

@end
