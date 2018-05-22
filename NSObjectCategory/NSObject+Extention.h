//
//  NSObject+Extention.h
//  LianxiTest
//
//  Created by pro on 2018/5/19.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extention)

+(instancetype)objectWithDict:(NSDictionary *)dict;

/**
 *  数组中需要转换的模型类
 *
 *  @return 字典中的key是数组属性名，value是数组中存放模型的Class（Class类型或者NSString类型）
 */
+ (NSDictionary *)cxj_objectClassInArray;


@end
