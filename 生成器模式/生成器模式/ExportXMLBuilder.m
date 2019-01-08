//
//  ExportXMLBuilder.m
//  生成器模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ExportXMLBuilder.h"

@implementation ExportXMLBuilder
- (NSString *)buildHeader:(ExportHeaderModel *)model {
    NSString *buffer = @"<?xml version='1.0' encoding='gb2312'?>\n";
    buffer = [buffer stringByAppendingString:@"<Report>\n"];
    buffer = [buffer stringByAppendingString:@"<Header>\n"];
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<DepId>%@</DepId>\n",model.depId]];
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ExportDate>%@</ExportDate>\n",model.exportDate]];
    buffer = [buffer stringByAppendingString:@"</Header>\n"];
    return buffer;
}
- (NSString *)buildBody:(NSDictionary<NSString *,NSArray<ExportDataModel *> *> *)data {
  NSString *buffer = @"<Body>\n";
    for (NSString *tblName in data.allKeys) {
        buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Datas TableName='%@'>\n",tblName]];
        for (ExportDataModel *model in data[tblName]) {
            buffer = [buffer stringByAppendingString:@"<Data>\n"];
            buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ProductId>%@</Product>\n",model.productId]];
            buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Price>%f</Price>\n",model.price]];
            buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<Amount>%f</Amount>\n",model.amount]];
            buffer = [buffer stringByAppendingString:@"</Data>\n"];
        }
        buffer = [buffer stringByAppendingString:@"</Datas>\n"];
    }
    buffer = [buffer stringByAppendingString:@"</Body>\n"];
    return buffer;
}
- (NSString *)buildFooter:(ExportFooterModel *)model {
    NSString *buffer =@"<Footer>\n";
    buffer = [buffer stringByAppendingString:[NSString stringWithFormat:@"<ExportUser>%@</ExportUser>\n",model.exportUser]];
    buffer = [buffer stringByAppendingString:@"</Footer>"];
    return buffer;
}

@end
