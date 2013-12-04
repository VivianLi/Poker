//
//  FriendListCell.m
//  Poker
//
//  Created by youcheng on 13-12-3.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "FriendListCell.h"

@implementation FriendListCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _headImage = [[UIImageView alloc]initWithFrame:CGRectMake(5, 5, 65, 65)];
        _headImage.backgroundColor = [UIColor blueColor];
        [self addSubview:_headImage];
        [_headImage release];
        
        _nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(_headImage.frame.size.width+_headImage.frame.origin.x+20, 20, 70, 20)];
        _nameLabel.text = @"名称";
        _nameLabel.font = [UIFont boldSystemFontOfSize:12];
        _nameLabel.textColor = [UIColor whiteColor];
        _nameLabel.backgroundColor = [UIColor clearColor];
        [self addSubview:_nameLabel];
        [_nameLabel release];
        
        _dengjiLabel = [[UILabel alloc]initWithFrame:CGRectMake(_nameLabel.frame.size.width+_nameLabel.frame.origin.x+40, 20, 70, 20)];
        _dengjiLabel.textColor = [UIColor whiteColor];
        _dengjiLabel.font = [UIFont boldSystemFontOfSize:12];
        _dengjiLabel.backgroundColor = [UIColor clearColor];
        _dengjiLabel.text = @"lv.27";
        [self addSubview:_dengjiLabel];
        [_dengjiLabel release];
        
        _vipImage = [[UIImageView alloc]initWithFrame:CGRectMake(_headImage.frame.size.width+_headImage.frame.origin.x+20, _dengjiLabel.frame.size.height+_dengjiLabel.frame.origin.y+10, 80, 20)];
        _vipImage.backgroundColor = [UIColor orangeColor];
        [self addSubview:_vipImage];
        [_vipImage release];
        
        _distanceLabel = [[UILabel alloc]initWithFrame:CGRectMake(_vipImage.frame.size.width+_vipImage.frame.origin.x+30, _dengjiLabel.frame.size.height+_dengjiLabel.frame.origin.y+10, 70, 20)];
        _distanceLabel.text = @"300m";
        _distanceLabel.font = [UIFont boldSystemFontOfSize:12];
        _distanceLabel.backgroundColor = [UIColor clearColor];
        _distanceLabel.textColor = [UIColor whiteColor];
        [self addSubview:_distanceLabel];
        [_distanceLabel release];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
