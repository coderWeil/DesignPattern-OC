//
//  ExportToTxtNormal.m
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ExportToTxtNormal.h"
#import "ExportHeaderModel.h"
#import "ExportDataModel.h"
#import "ExportFooterModel.h"

@implementation ExportToTxtNormal
- (void)exportDataWithHeaderModel:(ExportHeaderModel *)headerModel
                        dataModel:(NSDictionary<NSString*,NSArray<ExportDataModel*>*> *)dataModel
                      footerModel:(ExportFooterModel *)footerModel
{
    //1.头部
    NSString *header = [NSString stringWithFormat:@"%@,%@\n",headerModel.depId,headerModel.exportDate];
    //2.文件主体
    NSString *data = @"";
    for (NSString *tblName in dataModel.allKeys) {
        data = [data stringByAppendingString:tblName];
        data = [data stringByAppendingString:@"\n"];
        for (ExportDataModel *model in dataModel[tblName]) {
            data = [data stringByAppendingString:[NSString stringWithFormat:@"%@,%f,%f\n",model.productId,model.price,model.amount]];
        }
    }
    //3.尾部
    NSString *footer = footerModel.exportUser;
    
    //拼接
    NSString *buffer = [NSString stringWithFormat:@"%@%@%@",header,data,footer];
    NSLog(@"输出到文本文件的内容：\n%@",buffer);
}
@end
