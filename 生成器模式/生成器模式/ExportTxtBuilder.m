//
//  ExportTxtBuilder.m
//  生成器模式
//
//  Created by weil on 2019/1/8.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import "ExportTxtBuilder.h"

@implementation ExportTxtBuilder
- (NSString *)buildHeader:(ExportHeaderModel *)model {
    return  [NSString stringWithFormat:@"%@,%@\n",model.depId,model.exportDate];;
}
- (NSString *)buildBody:(NSDictionary<NSString *,NSArray<ExportDataModel *> *> *)data {
    //2.文件主体
    NSString *body = @"";
    for (NSString *tblName in data.allKeys) {
        body = [body stringByAppendingString:tblName];
        body = [body stringByAppendingString:@"\n"];
        for (ExportDataModel *model in data[tblName]) {
            body = [body stringByAppendingString:[NSString stringWithFormat:@"%@,%f,%f\n",model.productId,model.price,model.amount]];
        }
    }
    return body;
}
- (NSString *)buildFooter:(ExportFooterModel *)model {
    return model.exportUser;
}
@end
