//
//  FriendInformationViewController.m
//  Poker
//
//  Created by youcheng on 13-12-3.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "FriendInformationViewController.h"

@interface FriendInformationViewController ()

@end

@implementation FriendInformationViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
