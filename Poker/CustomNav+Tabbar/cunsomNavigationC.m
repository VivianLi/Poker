//
//  cunsomNavigationC.m
//  自定义导航控制器
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 shanGuan. All rights reserved.
//

#import "cunsomNavigationC.h"

@interface cunsomNavigationC ()

@end

@implementation cunsomNavigationC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UISwipeGestureRecognizer * swip=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(goSwip)];
        [self.view addGestureRecognizer:swip];
       
    }
    return self;
}
-(void)goSwip
{
    [self popToRootViewControllerAnimated:YES];
}
-(void)swipUpNavigation
{
    self.navigationController.view.frame=CGRectMake(0, -50, 320, 44);
}
- (void)viewDidLoad
{
     self.navigationBarHidden = YES;
    //编译器开始渲染时候
    //ios5.0之后可以修改uinagevigation的背景图片，如果ios5.0之前修改的话会导致崩溃找不到方法，所以要加这个判断
        if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) {
            [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav.png"] forBarMetrics:UIBarMetricsDefault];
        }
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//类目
@implementation UINavigationBar (cusomNavigationB)
//ios5.0之前修改navbar背景图片
-(void)drawRect:(CGRect)rect
{
    UIImage * image=[UIImage imageNamed:@"NavBar.png"];
    [image drawInRect:rect];
}
@end