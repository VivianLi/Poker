//
//  MatchView.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "MatchView.h"

@implementation MatchView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIImageView * aImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 10, 80, 80)];
        aImageView.backgroundColor = [UIColor greenColor];
        [self addSubview:aImageView];
        [aImageView release];
        
        UILabel * nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+5, 5, 150, 25)];
        nameLabel.text = @"淘汰赛-冠军iPhone5";
        nameLabel.textColor = [UIColor whiteColor];
        nameLabel.font = [UIFont boldSystemFontOfSize:16];
        [self addSubview:nameLabel];
        [nameLabel release];
        
        UILabel * buyLabel = [[UILabel alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+5, nameLabel.frame.size.height+nameLabel.frame.origin.y, 30, 20)];
        buyLabel.text = @"买入:";
        buyLabel.textColor = [UIColor whiteColor];
        buyLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:buyLabel];
        [buyLabel release];
        
        UILabel * buyMoney = [[UILabel alloc]initWithFrame:CGRectMake(buyLabel.frame.size.width+buyLabel.frame.origin.x, nameLabel.frame.size.height+nameLabel.frame.origin.y, 100, 20)];
        buyMoney.text = @"10000";
        buyMoney.textColor = [UIColor whiteColor];
        buyMoney.font = [UIFont systemFontOfSize:13];
        [self addSubview:buyMoney];
        [buyMoney release];
        
        UILabel * serviceLabel = [[UILabel alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+5, buyMoney.frame.size.height+buyMoney.frame.origin.y, 45, 20)];
        serviceLabel.text = @"服务费:";
        serviceLabel.textColor = [UIColor whiteColor];
        serviceLabel.font = [UIFont systemFontOfSize:13];
        [self addSubview:serviceLabel];
        [serviceLabel release];
        
        UILabel * serviceMoney = [[UILabel alloc]initWithFrame:CGRectMake(serviceLabel.frame.size.width+serviceLabel.frame.origin.x, buyMoney.frame.size.height+buyMoney.frame.origin.y, 100, 20)];
        serviceMoney.text = @"1000";
        serviceMoney.textColor = [UIColor whiteColor];
        serviceMoney.font = [UIFont systemFontOfSize:13];
        [self addSubview:serviceMoney];
        [serviceMoney release];
        
        UILabel * startTime = [[UILabel alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+5, serviceMoney.frame.size.height+serviceMoney.frame.origin.y, 60, 20)];
        startTime.text = @"开赛时间:";
        startTime.textColor = [UIColor whiteColor];
        startTime.font = [UIFont systemFontOfSize:13];
        [self addSubview:startTime];
        [startTime release];
        
        UILabel * time = [[UILabel alloc]initWithFrame:CGRectMake(startTime.frame.size.width+startTime.frame.origin.x, serviceMoney.frame.size.height+serviceMoney.frame.origin.y, 100, 20)];
        time.text = @"20:00";
        time.textColor = [UIColor whiteColor];
        time.font = [UIFont systemFontOfSize:13];
        [self addSubview:time];
        [time release];
        
        UIButton * aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        aButton.frame = CGRectMake(nameLabel.frame.size.width+nameLabel.frame.origin.x, 10, 80, 80);
        [aButton setTitle:@"报名" forState:UIControlStateNormal];
        aButton.titleLabel.textColor = [UIColor whiteColor];
        [self addSubview:aButton];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
