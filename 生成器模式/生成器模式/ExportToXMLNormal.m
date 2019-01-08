//
//  ExportToXMLNormal.m
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ExportToXMLNormal.h"
#import "ExportHeaderModel.h"
#import "ExportDataModel.h"
#import "ExportFooterModel.h"

@implementation ExportToXMLNormal
- (void)exportDataWithHeaderModel:(ExportHeaderModel *)headerModel
                        dataModel:(NSDictionary<NSString*,NSArray<ExportDataModel*>*> *)dataModel
                      footerModel:(ExportFooterModel *)footerModel
{
    //拼接
    NSString *buffer = @"<?xml version='1.0' encoding='gb2312'?>\n";
    buffer = [buffer stringByAppendingString:@"<Report>\n"];
    buffer = [buffer stringByAppendingString:@"<Header>\n"];
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<DepId>%@</DepId>\n",headerModel.depId]];
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ExportDate>%@</ExportDate>\n",headerModel.exportDate]];
    buffer = [buffer stringByAppendingString:@"</Header>\n"];
    buffer = [buffer stringByAppendingString:@"<Body>\n"];
    for (NSString *tblName in dataModel.allKeys) {
        buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Datas TableName='%@'>\n",tblName]];
        for (ExportDataModel *model in dataModel[tblName]) {
            buffer = [buffer stringByAppendingString:@"<Data>\n"];
            buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ProductId>%@</Product>\n",model.productId]];
             buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Price>%f</Price>\n",model.price]];
             buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Amount>%f</Amount>\n",model.amount]];
            buffer = [buffer stringByAppendingString:@"</Data>\n"];
        }
        buffer = [buffer stringByAppendingString:@"</Datas>\n"];
    }
    buffer = [buffer stringByAppendingString:@"</Body>\n"];
    buffer = [buffer stringByAppendingString:@"<Footer>\n"];
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ExportUser>%@</ExportUser>\n",footerModel.exportUser]];
    buffer = [buffer stringByAppendingString:@"</Footer>"];
    NSLog(@"输出到XML文件的内容：\n%@",buffer);
}

@end
