//
//  main.m
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ExportToTxtNormal.h"
#import "ExportToXMLNormal.h"
#import "ExportHeaderModel.h"
#import "ExportDataModel.h"
#import "ExportFooterModel.h"
#import "ExportTxtBuilder.h"
#import "ExportXMLBuilder.h"
#import "Director.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ExportHeaderModel *header = [[ExportHeaderModel alloc] init];
        header.depId = @"一分公司";
        header.exportDate = @"2019.01.07";
        
        NSMutableDictionary<NSString *,NSArray<ExportDataModel*> *> *mapData = @{}.mutableCopy;
        NSMutableArray<ExportDataModel*> *col = @[].mutableCopy;
        
        ExportDataModel *data1 = [[ExportDataModel alloc] init];
        data1.productId = @"产品001号";
        data1.price = 100;
        data1.amount = 50;
        
        ExportDataModel *data2 = [[ExportDataModel alloc] init];
        data2.productId = @"产品002号";
        data2.price = 200;
        data2.amount = 20;
        
        [col addObject:data1];
        [col addObject:data2];
        
        mapData[@"销售记录表"] = col.copy;
    
        ExportFooterModel *footer = [ExportFooterModel new];
        footer.exportUser = @"小明";
        
//        ExportToTxtNormal *txtNormal = [[ExportToTxtNormal alloc] init];
//        [txtNormal exportDataWithHeaderModel:header dataModel:mapData footerModel:footer];
//
//        ExportToXMLNormal *xmlNormal = [[ExportToXMLNormal alloc] init];
//        [xmlNormal exportDataWithHeaderModel:header dataModel:mapData footerModel:footer];
        ExportTxtBuilder *txtBuilder = [[ExportTxtBuilder alloc] init];
        Director *txtDir = [[Director alloc] initWithBuilder:txtBuilder];
        NSLog(@"输出到文本文件的内容：\n%@",[txtDir constructWithHeaderModel:header bodyDatas:mapData footerModel:footer]);
        
        ExportXMLBuilder *xmlBuilder = [[ExportXMLBuilder alloc] init];
        Director *xmlDir = [[Director alloc] initWithBuilder:xmlBuilder];
         NSLog(@"输出到XML文件的内容：\n%@",[xmlDir constructWithHeaderModel:header bodyDatas:mapData footerModel:footer]);
    }
    return 0;
}
