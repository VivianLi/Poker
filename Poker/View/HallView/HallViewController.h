//
//  HallViewController.h
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonalView.h"
#import "HallView.h"
#import "MatchView.h"
#import "HomeView.h"
#import "QuickStartViewController.h"
#import "MessageViewController.h"
@interface HallViewController : UIViewController
{
    HallView * hallV;
    HomeView * homeVC;
    MatchView * matchV;
    PersonalView * personalV;
}
@end
