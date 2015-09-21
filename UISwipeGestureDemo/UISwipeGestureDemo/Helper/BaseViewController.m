//
//  BaseViewController.m
//  UIViewController2
//
//  Created by Hailong.wang on 15/7/30.
//  Copyright (c) 2015年 Hailong.wang. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =RandomColor;
    //添加视图
    [self createView];
    //初始化数据
    [self initData];
    //添加行为
    [self addTouchAction];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//创建视图
- (void)createView {
    //不做实现，只是为了使用方便
}

- (void)toNextView {
    
}

//初始化数据源
- (void)initData {
    //不做实现，只是为了使用方便
}

//添加事件
- (void)addTouchAction {
    //不做实现，只是为了使用方便
}

//创建上导航左侧按钮(以view作模板)
- (void)createNavigationLeftButton:(id)view {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];
}

//创建上导航左侧按钮(系统标题)
- (void)createNavigationLeftButtonWithTitle:(NSString *)title target:(id)target action:(SEL)action {
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStylePlain target:target action:action];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftItem release];

}

- (void)backAction {
    [self.navigationController popViewControllerAnimated:YES];
}

@end





