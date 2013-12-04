//
//  HomeCell.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.userInteractionEnabled = YES;
        
        // Initialization code
        _idLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, 10, 20, 20)];
        _idLabel.text = @"ID:";
        _idLabel.font = [UIFont boldSystemFontOfSize:12];
        _idLabel.textColor = [UIColor whiteColor];
        [self addSubview:_idLabel];
        
        _playID = [[UILabel alloc]initWithFrame:CGRectMake(_idLabel.frame.size.width+_idLabel.frame.origin.x, 10, 80, 20)];
        _playID.text = @"34242";
        _playID.textColor = [UIColor whiteColor];
        _playID.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_playID];
        
        _playNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(5, _playID.frame.size.height+_playID.frame.origin.y-3, 35, 20)];
        _playNameLabel.textColor = [UIColor whiteColor];
        _playNameLabel.text = @"玩家:";
        _playNameLabel.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_playNameLabel];
        
        _playNum = [[UILabel alloc]initWithFrame:CGRectMake(_playNameLabel.frame.size.width+_playNameLabel.frame.origin.x, _playID.frame.size.height+_playID.frame.origin.y-3, 30, 20)];
        _playNum.text = @"9/9";
        _playNum.textColor = [UIColor whiteColor];
        _playNum.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_playNum];
        
        _BigSmallLabel = [[UILabel alloc]initWithFrame:CGRectMake(_playNum.frame.size.width+_playNum.frame.origin.x+35, 27, 40, 20)];
        _BigSmallLabel.textColor = [UIColor whiteColor];
        _BigSmallLabel.font = [UIFont boldSystemFontOfSize:12];
        _BigSmallLabel.text = @"小大盲:";
        [self addSubview:_BigSmallLabel];
        
        _BigSmallNumber = [[UILabel alloc]initWithFrame:CGRectMake(_BigSmallLabel.frame.size.width+_BigSmallLabel.frame.origin.x, 27, 50, 20)];
        _BigSmallNumber.text = @"100/200";
        _BigSmallNumber.textColor = [UIColor whiteColor];
        _BigSmallNumber.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_BigSmallNumber];
        
        _buyLabel = [[UILabel alloc]initWithFrame:CGRectMake(_BigSmallNumber.frame.size.width+_BigSmallNumber.frame.origin.x+10, 27, 28, 20)];
        _buyLabel.text = @"买入:";
        _buyLabel.font = [UIFont boldSystemFontOfSize:12];
        _buyLabel.textColor = [UIColor whiteColor];
        [self addSubview:_buyLabel];
        
        _buyMoney = [[UILabel alloc]initWithFrame:CGRectMake(_buyLabel.frame.size.width+_buyLabel.frame.origin.x, 27, 70, 20)];
        _buyMoney.text = @"1000~2000";
        _buyMoney.textColor = [UIColor whiteColor];
        _buyMoney.font = [UIFont boldSystemFontOfSize:12];
        [self addSubview:_buyMoney];
        
        UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(0, _buyMoney.frame.size.height+_buyMoney.frame.origin.y+1, Screen_width, 1)];
        img.backgroundColor = [UIColor grayColor];
        [self addSubview:img];
        [img release];
        
        _aButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _aButton.frame = CGRectMake(0, 0, Screen_width, 50);
        _aButton.userInteractionEnabled = YES;
        [self addSubview:_aButton];
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
