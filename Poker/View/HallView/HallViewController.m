//
//  HallViewController.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "HallViewController.h"

@interface HallViewController ()

@end

@implementation HallViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
    personalV = [[PersonalView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, 140)];
    [personalV.MatchButton addTarget:self action:@selector(goMatch) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:personalV];
    [personalV release];
    [personalV.StartButton addTarget:self action:@selector(goStart) forControlEvents:UIControlEventTouchUpInside];
    [personalV.getChouMaButton addTarget:self action:@selector(goGetChouMa) forControlEvents:UIControlEventTouchUpInside];
    [homeVC.cell.aButton addTarget:self action:@selector(goPlayGameHome) forControlEvents:UIControlEventTouchUpInside];
    [personalV.messageButton addTarget:self action:@selector(goMessage) forControlEvents:UIControlEventTouchUpInside];
    [self goHome];
    personalV.HomeButton.selected = YES;
    [personalV.HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [personalV.MatchButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];

}
#pragma mark - 房间
- (void)goHome
{
    if (matchV)
    {
        [matchV removeFromSuperview];
    }

    UIImage * homeImg = [UIImage imageNamed:@"fangjiananniu.png"];
    UIImage * homeImgSelect = [UIImage imageNamed:@"fangjiananniu_anxia.png"];
    [personalV.HomeButton setBackgroundImage:homeImgSelect forState:UIControlStateSelected];
    [personalV.MatchButton setBackgroundImage:homeImg forState:UIControlStateNormal];
    homeVC = [[HomeView alloc]initWithFrame:CGRectMake(0, 140, Screen_width, Screen_height-140-49)];
    [self.view addSubview:homeVC];
    homeVC.userInteractionEnabled = YES;
    [homeVC release];
    personalV.HomeButton.selected = YES;
    personalV.MatchButton.selected = NO;
    [personalV.MatchButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [personalV.HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    personalV.HomeButton.userInteractionEnabled = NO;
    personalV.MatchButton.userInteractionEnabled = YES;
}
#pragma mark - 比赛消息
- (void)goMatch
{
    if (homeVC)
    {
        [homeVC removeFromSuperview];
    }
    UIImage * homeImg = [UIImage imageNamed:@"fangjiananniu.png"];
    UIImage * homeImgSelect = [UIImage imageNamed:@"fangjiananniu_anxia.png"];
    [personalV.HomeButton setBackgroundImage:homeImg forState:UIControlStateNormal];
    [personalV.MatchButton setBackgroundImage:homeImgSelect forState:UIControlStateSelected];
    matchV = [[MatchView alloc]initWithFrame:CGRectMake(0, 140, Screen_width, Screen_height-49-140)];
    [self.view addSubview:matchV];
    matchV.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
    [matchV release];
    personalV.MatchButton.selected = YES;
    personalV.HomeButton.selected = NO;
    [personalV.MatchButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [personalV.HomeButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    personalV.HomeButton.userInteractionEnabled = YES;
    personalV.MatchButton.userInteractionEnabled = NO;
    [personalV.HomeButton addTarget:self action:@selector(goHome) forControlEvents:UIControlEventTouchUpInside];
}
#pragma mark - 消息通知
- (void)goMessage
{
    MessageViewController * messageVC = [[MessageViewController alloc]init];
    [self.navigationController pushViewController:messageVC animated:YES];
    [messageVC release];
}
#pragma mark - 进入游戏房间
- (void)goPlayGameHome
{
    DLog(@"1111");
    PlayHomeViewController * playGameHomeVC = [[PlayHomeViewController alloc]init];
    [self.navigationController pushViewController:playGameHomeVC animated:YES];
}
#pragma mark - 快速进入游戏房间
- (void)goStart
{
    QuickStartViewController * quickStartVC = [[QuickStartViewController alloc]init];
    [self.navigationController pushViewController:quickStartVC animated:YES];
}
#pragma mark - 获取筹码
- (void)goGetChouMa
{
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
