//
//  Myhelper.h
//  UIControlDemo
//
//  Created by qianfeng on 15/8/3.
//  Copyright (c) 2015年 刘强. All rights reserved.
//

#ifndef UIControlDemo_Myhelper_h
#define UIControlDemo_Myhelper_h
//44是一个特殊常量，默认行高和NaviationBar的高度
#define Default 44
//距离左边边距为10
#define LeftDistance 10
//安全释放宏
#define Release_Safe(_control) [_control release],_control=nil;
//控件间的距离
#define ControlDistance 20
//传入RGBA四个参数，得到颜色
//美工和设计通过PS给出的色值是0~255
//苹果的RGB参数给出的是0~1
//那我们就让美工给出的 参数/255，得到0~1之间的数
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
//传入RGB三个参数，得到颜色
#define RGB(r,g,b) RGBA(r,g,b,1.f)
//取得随机颜色
#define RandomColor RGB(arc4random()%256,arc4random()%256,arc4random()%256)



#endif
