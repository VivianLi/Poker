//
//  MessageCell.m
//  Poker
//
//  Created by youcheng on 13-12-3.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "MessageCell.h"

@implementation MessageCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _headImage = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
        _headImage.backgroundColor = [UIColor redColor];
        [self addSubview:_headImage];
        [_headImage release];
        
        _messageLabel = [[UILabel alloc]initWithFrame:CGRectMake(_headImage.frame.size.width+_headImage.frame.origin.x+40, 10, 70, 20)];
        _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.textColor = [UIColor whiteColor];
        _messageLabel.text = @"系统邮件";
        _messageLabel.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_messageLabel];
        [_messageLabel release];
        
        _contextLabel = [[UILabel alloc]initWithFrame:CGRectMake(_headImage.frame.size.width+_headImage.frame.origin.x+40, 35, 70, 20)];
        _contextLabel.text = @"内容";
        _contextLabel.textColor = [UIColor whiteColor];
        _contextLabel.backgroundColor = [UIColor clearColor];
        _contextLabel.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_contextLabel];
        [_contextLabel release];
        
        _timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(_messageLabel.frame.size.width+_messageLabel.frame.origin.x+30, 10, 100, 20)];
        _timeLabel.backgroundColor = [UIColor clearColor];
        _timeLabel.text = @"剩余时间7小时";
        _timeLabel.font = [UIFont boldSystemFontOfSize:12];
        _timeLabel.textColor = [UIColor whiteColor];
        [self addSubview:_timeLabel];
        [_timeLabel release];
        
        _deleteButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        _deleteButton.frame = CGRectMake(_messageLabel.frame.size.width+_messageLabel.frame.origin.x+30, 35, 70, 30);
        [_deleteButton setTitle:@"删除" forState:UIControlStateNormal];
        [self addSubview:_deleteButton];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
