//
//  Builder.h
//  生成器模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExportHeaderModel.h"
#import "ExportDataModel.h"
#import "ExportFooterModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Builder <NSObject>
- (NSString *)buildHeader:(ExportHeaderModel *)model;
- (NSString *)buildBody:(NSDictionary<NSString *,NSArray<ExportDataModel *> *> *)data;
- (NSString *)buildFooter:(ExportFooterModel *)model;
@end

NS_ASSUME_NONNULL_END
