//
//  DemoModel.h
//  DictToObj
//
//  Created by pro on 2018/5/22.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DemoSubModel,DemoUserModel;
@interface DemoModel : NSObject

/** count */
@property (nonatomic,strong) NSNumber *attitudes_count;

/** created */
@property (nonatomic,strong) NSString *created_at;

/** id */
@property (nonatomic,strong) NSString *idstr;

/** children自动将数组内的字典转模型 */
@property (nonatomic,strong) NSArray<DemoSubModel *> *children;

/** source */
@property (nonatomic,strong) NSString *source;

/** User Model自动转换模型 */
@property (nonatomic,strong) DemoUserModel *User;


@end
