//
//  Director.h
//  生成器模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@class ExportHeaderModel,ExportDataModel,ExportFooterModel;
@interface Director : NSObject
- (instancetype)initWithBuilder:(id<Builder>)builder;

- (NSString *)constructWithHeaderModel:(ExportHeaderModel *)headerModel
                       bodyDatas:(NSDictionary<NSString *,NSArray<ExportDataModel*>*>*)bodyDatas
                     footerModel:(ExportFooterModel *)footerModel;
@end

NS_ASSUME_NONNULL_END
