//
//  FriendViewController.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "FriendViewController.h"

@interface FriendViewController ()

@end

@implementation FriendViewController

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
    UILabel * nearFriendLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 5, 100, 30)];
    nearFriendLabel.backgroundColor = [UIColor clearColor];
    nearFriendLabel.text = @"附近的好友";
    nearFriendLabel.textAlignment = NSTextAlignmentCenter;
    nearFriendLabel.textColor = [UIColor whiteColor];
    nearFriendLabel.font = [UIFont boldSystemFontOfSize:18];
    [self.view addSubview:nearFriendLabel];
    [nearFriendLabel release];
    
    
    UITableView * aTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 30, Screen_width, Screen_height-30-49) style:UITableViewStylePlain];
    aTableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
    aTableView.delegate = self;
    aTableView.dataSource = self;
    [self.view addSubview:aTableView];
    [aTableView release];
}
#pragma mark - tableView的代理方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  10;
}
//初始化tableViewCell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellidentifier = @"cell";
    FriendListCell * cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (cell == nil)
    {
        cell = [[FriendListCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellidentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
    }
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    FriendInformationViewController * friendInformationVC = [[FriendInformationViewController alloc]init];
    [self.navigationController pushViewController:friendInformationVC animated:YES];
    [friendInformationVC release];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
