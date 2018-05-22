//
//  DemoModel.m
//  DictToObj
//
//  Created by pro on 2018/5/22.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "DemoModel.h"
#import "NSObject+Extention.h"
@implementation DemoModel


/**
 数组转模型

 @return 返回数组字段-》模型类名
 */
+(NSDictionary *)cxj_objectClassInArray
{
    return @{
             @"children":@"DemoSubModel"
             };
}

@end
