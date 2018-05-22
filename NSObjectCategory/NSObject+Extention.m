//
//  NSObject+Extention.m
//  LianxiTest
//
//  Created by pro on 2018/5/19.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "NSObject+Extention.h"
#import <objc/message.h>

//字典转模型
@implementation NSObject (Extention)

+(instancetype)objectWithDict:(NSDictionary *)dict
{
    
    id obj = [[self alloc] init];
    
    unsigned int count = 0;
    //2.转换变量为对应的属性
    Ivar *ivarList = class_copyIvarList(self, &count);
    
    //获取数组转模型对应字典模型
    NSDictionary *dictTrans = nil;
    if ([self respondsToSelector:@selector(cxj_objectClassInArray)]) {
        dictTrans = [self cxj_objectClassInArray];
    }
    
    
    for (int i=0; i<count; i++) {
        Ivar ivar = ivarList[i];
        //获取属性名
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        ivarName = [ivarName substringFromIndex:1];
        //获取属性类型
        NSString *ivarType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"@\"" withString:@""];
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"\"" withString:@""];
        
        id ivarValue = dict[ivarName];
        //NSLog(@"type - %@",ivarType);
        
        if ([ivarValue isKindOfClass:[NSArray class]] && dictTrans) {
            NSString *modelStr = dictTrans[ivarName];
            
            NSMutableArray *subDictArr = [NSMutableArray array];
            for (id subValue in ivarValue) {
                if (![subValue isKindOfClass:[NSDictionary class]] || modelStr.length<= 0) continue;
                
                [subDictArr addObject:[NSClassFromString(modelStr) objectWithDict:subValue]];
            }
            ivarValue = [subDictArr copy];
        }
        
        
        if ([ivarValue isKindOfClass:[NSDictionary class]] && ![ivarType hasPrefix:@"NS"]) {
            //字典转模型
            
            ivarValue = [NSClassFromString(ivarType) objectWithDict:ivarValue];
        }
        
        //赋值
        [obj setValue:ivarValue forKey:ivarName];
    }


    return obj;
}


@end
