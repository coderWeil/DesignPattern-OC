//
//  ExportToTxtNormal.h
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class ExportHeaderModel,ExportDataModel,ExportFooterModel;
@interface ExportToTxtNormal : NSObject
- (void)exportDataWithHeaderModel:(ExportHeaderModel *)headerModel
                        dataModel:(NSDictionary<NSString*,NSArray<ExportDataModel*>*> *)dataModel
                      footerModel:(ExportFooterModel *)footerModel;
@end

NS_ASSUME_NONNULL_END
