//
//  Director.m
//  生成器模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "Director.h"
#import "ExportTxtBuilder.h"
#import "ExportXMLBuilder.h"

@interface Director ()
@property (nonatomic,strong) id<Builder> builder;
@end

@implementation Director
- (instancetype)initWithBuilder:(id<Builder>)builder {
    self = [super init];
    if (self) {
        self.builder = builder;
    }
    return self;
}
- (NSString *)constructWithHeaderModel:(ExportHeaderModel *)headerModel bodyDatas:(NSDictionary<NSString *,NSArray<ExportDataModel *> *> *)bodyDatas footerModel:(ExportFooterModel *)footerModel {
    NSString *header = [self.builder buildHeader:headerModel];
    NSString *body = [self.builder buildBody:bodyDatas];
    NSString *footer = [self.builder buildFooter:footerModel];
    return [NSString stringWithFormat:@"%@%@%@",header,body,footer];
}
@end
