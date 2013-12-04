//
//  HomeView.h
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayHomeViewController.h"
#import "HomeCell.h"
@interface HomeView : UIView<UITableViewDataSource,UITableViewDelegate>
{
    BOOL flog;
    UIButton * aButton;
    UIButton * aButton2;
    UIButton * aButton3;
    UIImageView * advertImage;
    UITableView *  tableVC;
}
@property(nonatomic,assign)HomeCell * cell;
@property(nonatomic,assign)UIButton * deletButton;
@end
