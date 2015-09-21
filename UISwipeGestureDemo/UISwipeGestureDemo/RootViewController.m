//
//  RootViewController.m
//  UISwipeGestureDemo
//
//  Created by qianfeng on 15/8/5.
//  Copyright (c) 2015年 刘强. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *show=[[UILabel alloc]initWithFrame:CGRectMake(10, 20, 300, 44)];
    show.tag=11;
    show.backgroundColor=[UIColor greenColor];
    [self.view addSubview:show];
    
    UISwipeGestureRecognizer *gesture = [[ UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeGestureRecognizerAction:)];
    //滑动方向
    //滑动方向默认为右
    /*
     UISwipeGestureRecognizerDirection) {
     UISwipeGestureRecognizerDirectionRight  向右
     UISwipeGestureRecognizerDirectionLeft   向左
     UISwipeGestureRecognizerDirectionUp     向上
     UISwipeGestureRecognizerDirectionDown   向下
     
     */
    
    gesture.direction
    =UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:gesture];
    Release_Safe(gesture);
    
    //左滑
    UISwipeGestureRecognizer *gesture1 = [[ UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeGestureRecognizerAction:)];
    //滑动方向
    //滑动方向默认为右
    /*
     UISwipeGestureRecognizerDirection) {
     UISwipeGestureRecognizerDirectionRight  向右
     UISwipeGestureRecognizerDirectionLeft   向左
     UISwipeGestureRecognizerDirectionUp     向上
     UISwipeGestureRecognizerDirectionDown   向下
     
     */
    
    gesture1.direction
    =UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:gesture1];
    Release_Safe(gesture1);

    
    
}

- (void)swipeGestureRecognizerAction :(UISwipeGestureRecognizer *)gesture {
    
    UILabel *show=(UILabel *)[self.view viewWithTag:11];
    if (gesture.direction == UISwipeGestureRecognizerDirectionLeft) {
        show.text=nil;
    }else{
    show.text=@"呵呵";
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
