//
//  cunstomTabBarC.m
//  Custom导航
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 guanshan. All rights reserved.
//

#import "cunstomTabBarC.h"
#import "cunsomNavigationC.h"
#import "HallViewController.h"
#import "FriendViewController.h"
#import "ActivityViewController.h"
#import "MoreViewController.h"
@interface cunstomTabBarC ()
{
    NSMutableArray * itemCounts;
    UIImage * selectHallImg;
    UIImage * selectFriendImg;
    UIImage * selectActivityImg;
    UIImage * selectMoreImg;
}
-(void)loadVireControllers;
-(void)loadCustomTabBarView;
@end

@implementation cunstomTabBarC
-(void)dealloc
{
    [selecView release];
    [tabBarBG release];
    [super dealloc];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.tabBar.hidden=YES;
        self.selectedIndex = 0;
        selecView.image = selectHallImg;
        selectLabel.text = @"大厅";
        selecView.frame = CGRectMake(-4, -3, 95, 56);
        selectLabel.frame = CGRectMake(0, 3, 95, 49);
    }
    return self;
}
-(void)swipDown
{
    tabBarBG.frame=CGRectMake(0, 460, 320, 49);
}
#pragma mark - 显示tabbar
-(void)showTabBar
{
    tabBarBG.hidden=NO;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.35];
    tabBarBG.frame=CGRectMake(0, 431, 320, 49);
    [UIView commitAnimations];
}
#pragma mark - 隐藏tabbar
-(void)hiddenTabBar
{
    tabBarBG.hidden=YES;
    [UIView beginAnimations:nil context:NULL];
    [UIView setAnimationDuration:0.35];
    tabBarBG.frame=CGRectMake(-320, 431, 320, 49);
    [UIView commitAnimations];
}
#pragma mark - 每个视图
-(void)loadVireControllers
{
    HallViewController * rct=[[HallViewController alloc]init];
    cunsomNavigationC * naV=[[cunsomNavigationC alloc]initWithRootViewController:rct];
    naV.navigationItem.title=@"自定义UINavigation";
    
    FriendViewController * rct1=[[FriendViewController alloc]init];
    cunsomNavigationC * naV1=[[cunsomNavigationC alloc]initWithRootViewController:rct1];
    
    ActivityViewController * rct2=[[ActivityViewController alloc]init];
    cunsomNavigationC * naV2=[[cunsomNavigationC alloc]initWithRootViewController:rct2];
    
    MoreViewController * rct3=[[MoreViewController alloc]init];
    cunsomNavigationC * naV3=[[cunsomNavigationC alloc]initWithRootViewController:rct3];
    
    
    self.viewControllers=[NSArray arrayWithObjects:naV,naV1,naV2,naV3, nil];
    [rct release];
    [rct1 release];
    [rct2 release];
    [rct3 release];
    [naV release];
    [naV1 release];
    [naV2 release];
    [naV3 release];
}
#pragma mark - 自定义tabbar样式
-(void)loadCustomTabBarView
{
    /*
     层次：背景（最下面），选中图片（中间），按钮（最上面）
     */
    //自定义背景
    UIImage * hallImg = [UIImage imageNamed:@"dating_tuan.png"];
    UIImage * friendImg = [UIImage imageNamed:@"haoyou_tuan.png"];
    UIImage * activityImg = [UIImage imageNamed:@"huodong_tuan.png"];
    UIImage * moreImg = [UIImage imageNamed:@"gengduo_tuan.png"];
   
    selectHallImg = [UIImage imageNamed:@"dating_xuanzhong.png"];
    selectFriendImg = [UIImage imageNamed:@"haoyou_xuanzhong.png"];
    selectActivityImg = [UIImage imageNamed:@"huodong_xuanzhong.png"];
    selectMoreImg = [UIImage imageNamed:@"gengduo_xuanzhong.png"];
    
    tabBarBG=[[UIImageView alloc]initWithFrame:CGRectMake(0, Screen_height-49, 320, 49)];
    tabBarBG.userInteractionEnabled=YES;//必须
    [tabBarBG setImage:[[UIImage imageNamed:@"xiadibian.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(10, 5, 10, 5)]];
    [self.view addSubview:tabBarBG];
    
    selectArray = [NSMutableArray arrayWithObjects:selectHallImg,selectFriendImg,selectActivityImg,selectMoreImg, nil];
    NSMutableArray * Array = [NSMutableArray arrayWithObjects:hallImg,friendImg,activityImg,moreImg, nil];
    
    //初始化自定义TabBarTtem按钮
    itemCounts=[[NSMutableArray alloc]initWithObjects:@"大厅",@"好友",@"活动",@"更多", nil];
    
    float coordinateX=0;
    for (int index=0; index<4; index++) {
        UIButton * button=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.tag=index;
        button.frame=CGRectMake(coordinateX, 49/2-22, 80, 49);
//        [button setBackgroundImage:[UIImage imageNamed:@"ditu.png"] forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blackColor];
        [tabBarBG addSubview:button];
        [button addTarget:self action:@selector(changeViewController:) forControlEvents:UIControlEventTouchUpInside];
        coordinateX +=80;
        
        UIImageView * img = [[UIImageView alloc]initWithImage:[Array objectAtIndex:index]];
        img.frame = CGRectMake((80-hallImg.size.width)/2, 0, hallImg.size.width, hallImg.size.height);
        [button addSubview:img];
        [img release];
        
        UILabel * textLabel = [[UILabel alloc]initWithFrame:CGRectMake((80-hallImg.size.width)/2, 25, 80, 20)];
        textLabel.backgroundColor = [UIColor clearColor];
        textLabel.text = [itemCounts objectAtIndex:index];
        textLabel.textColor = [UIColor whiteColor];
        textLabel.font = [UIFont boldSystemFontOfSize:14];
        [button addSubview:textLabel];
        [textLabel release];
        
        //初始化自定义的选中背景
        selecView=[[UIImageView alloc]initWithFrame:CGRectMake(coordinateX,49/2-22, 100, 52)];
        selecView.image=[selectArray objectAtIndex:index];
        selecView.backgroundColor = [UIColor clearColor];
        [tabBarBG addSubview:selecView];
        [selecView release];
        
        selectLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 3, 95, 49)];
        selectLabel.font = [UIFont boldSystemFontOfSize:25];
        selectLabel.backgroundColor = [UIColor clearColor];
        selectLabel.textAlignment = NSTextAlignmentCenter;
        selectLabel.textColor = [UIColor whiteColor];
        [selecView addSubview:selectLabel];
        [selectLabel release];
    }
}
#pragma mark - 每个tabbar响应的方法
-(void)changeViewController:(UIButton *)sender
{
    self.selectedIndex=sender.tag;
    if (self.selectedIndex == 0)
    {
        selecView.image = selectHallImg;
        selectLabel.text = @"大厅";
    }
    else if (self.selectedIndex == 1)
    {
        selecView.image = selectFriendImg;
        selectLabel.text = @"好友";
    }
    else if (self.selectedIndex == 2)
    {
        selecView.image = selectActivityImg;
        selectLabel.text = @"活动";
    }
    else
    {
        selecView.image = selectMoreImg;
        selectLabel.text = @"更多";
    }
    selecView.frame=CGRectMake(-4+sender.tag*80, -3, 95, 56);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadVireControllers];
    [self loadCustomTabBarView];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
