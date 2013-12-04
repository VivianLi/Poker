//
//  MessageCell.h
//  Poker
//
//  Created by youcheng on 13-12-3.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MessageCell : UITableViewCell
@property(nonatomic,assign)UIImageView * headImage;
@property(nonatomic,assign)UILabel * messageLabel;
@property(nonatomic,assign)UILabel * contextLabel;
@property(nonatomic,assign)UILabel * timeLabel;
@property(nonatomic,assign)UIButton * deleteButton;
@end
