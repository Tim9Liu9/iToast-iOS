//
//  NMGViewController.m
//  iToast_ios
//
//  Created by timliu on 14-6-24.
//  Copyright (c) 2014年 timliu. All rights reserved.
//

#import "NMGViewController.h"
#import "iToast.h"

@interface NMGViewController ()

@end

@implementation NMGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self btnCreate];
	
}


- (void) btnCreate {
    // 顶部显示
    UIButton *btn_top = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_top.backgroundColor  = [UIColor grayColor];
    [btn_top setTitle:@"顶部显示iToast" forState:UIControlStateNormal];
    [btn_top setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_top setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    // 设置按钮的frame
    btn_top.frame = CGRectMake(0, 0, 150, 30);
    // 设置按钮的中点（在self.view的中心）
    CGSize size =  self.view.frame.size;
    CGFloat centerX = size.width * 0.5f;
    CGFloat centerY = size.height * 0.5f - 150;
    btn_top.center = CGPointMake(centerX, centerY);
    [self.view addSubview:btn_top];
    // 绑定一个id
    btn_top.tag = 100;
    // 给按钮绑定单击的监听器
    [btn_top addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    // 中间显示
    UIButton *btn_cent = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_cent.backgroundColor  = [UIColor grayColor];
    [btn_cent setTitle:@"中间显示iToast" forState:UIControlStateNormal];
    [btn_cent setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_cent setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_cent.frame = CGRectMake(0, 0, 150, 30);
    CGPoint btn2Center = btn_top.center;
    btn2Center.y += 50;
    btn_cent.tag = 200;
    btn_cent.center = btn2Center;
    [btn_cent addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_cent];
    
    // 底部显示
    UIButton *btn_bottom = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_bottom.backgroundColor  = [UIColor grayColor];
    [btn_bottom setTitle:@"底部显示iToast" forState:UIControlStateNormal];
    [btn_bottom setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_bottom setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_bottom.frame = CGRectMake(0, 0, 150, 30);
    CGPoint btn3 = btn_top.center;
    btn3.y += 100;
    btn_bottom.tag = 300;
    btn_bottom.center = btn3;
    [btn_bottom addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_bottom];
    
    // 最简便显示
    UIButton *btn_simple = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_simple.backgroundColor  = [UIColor grayColor];
    [btn_simple setTitle:@"简便显示默认:1秒" forState:UIControlStateNormal];
    [btn_simple setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_simple setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_simple.frame = CGRectMake(0, 0, 120, 30);
    CGPoint btn4 = btn_top.center;
    btn4.y += 150;
    btn_simple.tag = 400;
    btn_simple.center = btn4;
    [btn_simple addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_simple];
    
    // 短时间显示
    UIButton *btn_short = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_short.backgroundColor  = [UIColor grayColor];
    [btn_short setTitle:@"短时间显示iToast:1秒" forState:UIControlStateNormal];
    [btn_short setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_short setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_short.frame = CGRectMake(0, 0, 150, 30);
    CGPoint btn5 = btn_top.center;
    btn5.y += 200;
    btn_short.tag = 500;
    btn_short.center = btn5;
    [btn_short addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_short];
    
    // 标准时间显示
    UIButton *btn_normal = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_normal.backgroundColor  = [UIColor grayColor];
    [btn_normal setTitle:@"标准显示iToast:3秒" forState:UIControlStateNormal];
    [btn_normal setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_normal setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_normal.frame = CGRectMake(0, 0, 150, 30);
    CGPoint btn6 = btn_top.center;
    btn6.y += 250;
    btn_normal.tag = 600;
    btn_normal.center = btn6;
    [btn_normal addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_normal];
    
    // 长时间显示
    UIButton *btn_long = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_long.backgroundColor  = [UIColor grayColor];
    [btn_long setTitle:@"长时间显示iToast:10秒" forState:UIControlStateNormal];
    [btn_long setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_long setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_long.frame = CGRectMake(0, 0, 180, 30);
    CGPoint btn7 = btn_top.center;
    btn7.y += 300;
    btn_long.tag = 700;
    btn_long.center = btn7;
    [btn_long addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_long];
    
    // 自定义显示
    UIButton *btn_custon = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn_custon.backgroundColor  = [UIColor grayColor];
    [btn_custon setTitle:@"自定义显示iToast:10秒" forState:UIControlStateNormal];
    [btn_custon setTitleColor:[UIColor blackColor]forState:UIControlStateNormal];
    [btn_custon setTitleColor:[UIColor blueColor]forState:UIControlStateHighlighted];
    btn_custon.frame = CGRectMake(0, 0, 180, 30);
    CGPoint btn8 = btn_top.center;
    btn8.y += 350;
    btn_custon.tag = 800;
    btn_custon.center = btn8;
    [btn_custon addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn_custon];
  
}

- (void) btnClick:(UIButton *) btn
{
    if (btn.tag == 100)
    {
        [[[iToast makeText:@"顶部显示iToast"]setGravity:iToastGravityTop] show];
    }else if(btn.tag == 200)
    {
        [[[iToast makeText:@"中间显示iToast"]setGravity:iToastGravityCenter] show];
    }else if(btn.tag == 300)
    {
        [[[iToast makeText:@"底部显示iToast"]setGravity:iToastGravityBottom] show];
    }else if(btn.tag == 400)
    {
        [[iToast makeText:@"简便显示iToast"] show];
    }else if(btn.tag == 500)
    {
        [[[[iToast makeText:@"短时间显示iToast:1秒"]setGravity:iToastGravityCenter] setDuration:iToastDurationShort] show];
    }else if(btn.tag == 600)
    {
        [[[[iToast makeText:@"标准时间显示iToast:3秒"]setGravity:iToastGravityCenter] setDuration:iToastDurationNormal] show];
    }else if(btn.tag == 700)
    {
        [[[[iToast makeText:@"长时间显示iToast:10秒"]setGravity:iToastGravityCenter] setDuration:iToastDurationLong] show];        

    }else if(btn.tag == 800)
    {
        iToast *toast = [[iToast alloc] initWithText:@"自定义iToast"];
        // 透明度
        [toast setBgAlpha:1.0];
        // 圆角像素
        [toast setCornerRadius:10];
        // 显示时间：毫秒
        [toast setDuration:5000.0];
        // 字体大小
        [toast setFontSize:30.0];
        // 文字阴影
        [toast setUseShadow:YES];
        // 在中间显示
//        [toast setGravity:iToastGravityCenter];
        // 在中间显示:再向左偏移，再向下偏移
        [toast setGravity:iToastGravityCenter offsetLeft:60 offsetTop:80];
//        toast.iToastTypeError;
        // 0是黑色，红色：0到1之间
        [toast setBgRed:0.6];
        // 0是黑色，蓝色：0到1之间
        [toast setBgBlue:0.8];
        // 0是黑色，绿色：0到1之间
        [toast setBgGreen:0.7];
        
        
        [toast show];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
