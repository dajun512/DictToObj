//
//  ViewController.m
//  DictToObj
//
//  Created by pro on 2018/5/22.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//  字典转模型

#import "ViewController.h"
#import "DemoModel.h"
#import "NSObject+Extention.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


/**
 点击控制器开始字典转模型
 */
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSString *jsonPath = [[NSBundle mainBundle] pathForResource:@"JsonSource" ofType:@".plist"];
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:jsonPath];
    
    if (![dict isKindOfClass:[NSDictionary class]]) {
        NSLog(@"不是个字典");
        return;
    }
    
    DemoModel *demoM = [DemoModel objectWithDict:dict];
    
    
    
    
    NSLog(@"模型转换完成 %@",demoM);
    
    
    
}

@end
