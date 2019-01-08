//
//  ExportDataModel.h
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExportDataModel : NSObject
//产品编号
@property (nonatomic,copy) NSString *productId;
//销售价格
@property (nonatomic,assign) double price;
//销售数量
@property (nonatomic,assign) double amount;

@end

NS_ASSUME_NONNULL_END
