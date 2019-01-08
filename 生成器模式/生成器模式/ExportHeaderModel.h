//
//  ExportHeaderModel.h
//  生成器模式
//
//  Created by weil on 2019/1/7.
//  Copyright © 2019 allyoga. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ExportHeaderModel : NSObject
//分公司或者门市店的编号
@property (nonatomic,copy) NSString *depId;
//导出数据的日期
@property (nonatomic,copy) NSString *exportDate;
@end

NS_ASSUME_NONNULL_END
