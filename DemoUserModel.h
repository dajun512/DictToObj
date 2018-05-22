//
//  DemoUserModel.h
//  DictToObj
//
//  Created by pro on 2018/5/22.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoUserModel : NSObject

/** name */
@property (nonatomic,strong) NSString *name;

/** age */
@property (nonatomic,strong) NSNumber *age;

/** sex */
@property (nonatomic,assign) BOOL sex;

@end
