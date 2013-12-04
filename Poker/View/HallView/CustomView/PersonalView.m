//
//  PersonalView.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "PersonalView.h"

@implementation PersonalView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
    //底图
        UIImage * image1 = [UIImage imageNamed:@"renwuditu.png"];
        UIImageView * backImage = [[UIImageView alloc]initWithImage:image1];
        backImage.frame = CGRectMake(0, 0, image1.size.width, image1.size.height);
        [self addSubview:backImage];
        [backImage release];
    //头像
        
        UIImageView * aImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 75, 75)];
        aImageView.backgroundColor = [UIColor clearColor];
        [self addSubview:aImageView];
        [aImageView release];
    //用户名
        UILabel * nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+10, 5, 50, 20)];
        nameLabel.text = @"Aexl";
        nameLabel.textColor = [UIColor whiteColor];
        [self addSubview:nameLabel];
        [nameLabel release];
    //等级
        UILabel * dengjiLabel = [[UILabel alloc]initWithFrame:CGRectMake(nameLabel.frame.size.width+nameLabel.frame.origin.x+10, 5, 30, 20)];
        dengjiLabel.text = @"lv2";
        dengjiLabel.textColor = [UIColor whiteColor];
        [self addSubview:dengjiLabel];
        [dengjiLabel release];
    //进度条
        UIImageView * dengjiImage = [[UIImageView alloc]initWithFrame:CGRectMake(dengjiLabel.frame.size.width+dengjiLabel.frame.origin.x, 7, 90, 15)];
        [dengjiImage setImage:[[UIImage imageNamed:@"jindutiao_di.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, -7, 5)]];
        [self addSubview:dengjiImage];
        [dengjiImage release];
        UIImageView * jinduImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 30, 15)];
        [jinduImage setImage:[[UIImage imageNamed:@"jindutiao_tiao.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 5, -8, 5)]];
        [dengjiImage addSubview:jinduImage];
        [jinduImage release];
        
    //取得筹码
        UILabel * choumaLabel = [[UILabel alloc]initWithFrame:CGRectMake(dengjiImage.frame.size.width+dengjiImage.frame.origin.x+22, 5, 50, 20)];
        choumaLabel.textColor = [UIColor brownColor];
        choumaLabel.text = @"取得";
        choumaLabel.font = [UIFont boldSystemFontOfSize:14];
        [backImage addSubview:choumaLabel];
        [choumaLabel release];
        
        UILabel * choumaLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(dengjiImage.frame.size.width+dengjiImage.frame.origin.x+22, 20, 50, 20)];
        choumaLabel1.textColor = [UIColor brownColor];
        choumaLabel1.text = @"筹码";
        choumaLabel1.font = [UIFont boldSystemFontOfSize:14];
        [backImage addSubview:choumaLabel1];
        [choumaLabel1 release];
        
        _getChouMaButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _getChouMaButton.frame = CGRectMake(dengjiImage.frame.size.width+dengjiImage.frame.origin.x+22, 30, 50, 40);
        [self addSubview:_getChouMaButton];
        
        
    //$标志
        UIImage * moneyImg = [UIImage imageNamed:@"chouma.png"];
        UIImageView * money1 = [[UIImageView alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+7, nameLabel.frame.size.height+nameLabel.frame.origin.y+4, moneyImg.size.width, moneyImg.size.height)];
        money1.image = moneyImg;
        [self addSubview:money1];
        [money1 release];
    //筹码
        UILabel * moneyLabel1 = [[UILabel alloc]initWithFrame:CGRectMake(money1.frame.size.width+money1.frame.origin.x, dengjiImage.frame.size.height+dengjiImage.frame.origin.y+5, 110, 20)];
        moneyLabel1.text = @"$345,000,000";
        moneyLabel1.textColor = [UIColor whiteColor];
        [self addSubview:moneyLabel1];
        [moneyLabel1 release];
    //游橙货币标志
        UIImage * money2Img = [UIImage imageNamed:@"jinqian.png"];
        UIImageView * money2 = [[UIImageView alloc]initWithFrame:CGRectMake(aImageView.frame.size.width+aImageView.frame.origin.x+7, moneyLabel1.frame.size.height+moneyLabel1.frame.origin.y+2, money2Img.size.width, money2Img.size.height)];
        money2.image = money2Img;
        [self addSubview:money2];
        [money2 release];
    //货币数量
        UILabel * moneyLabel2 = [[UILabel alloc]initWithFrame:CGRectMake(money2.frame.size.width+money2.frame.origin.x, moneyLabel1.frame.size.height+moneyLabel1.frame.origin.y+8, 50, 20)];
        moneyLabel2.text = @"2123";
        moneyLabel2.textColor = [UIColor whiteColor];
        [self addSubview:moneyLabel2];
        [moneyLabel2 release];
    //消息图标
        UIImage * messageImg = [UIImage imageNamed:@"xinfeng.png"];
        _messageButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _messageButton.frame = CGRectMake(2, backImage.frame.size.height+backImage.frame.origin.y+5, messageImg.size.width, messageImg.size.height);
        [_messageButton setImage:messageImg forState:UIControlStateNormal];
        [self addSubview:_messageButton];
        
        UIImage * messImg = [UIImage imageNamed:@"xiaoxitishi.png"];
        UIImageView * messImage = [[UIImageView alloc]initWithImage:messImg];
        messImage.frame = CGRectMake(20, -3, messImg.size.width, messImg.size.height);
        [_messageButton addSubview:messImage];
        [messImage release];
        
        UILabel * messLabel = [[UILabel alloc]initWithFrame:CGRectMake(4, 0, messImg.size.width, messImg.size.height)];
        messLabel.backgroundColor = [UIColor clearColor];
        messLabel.textColor = [UIColor whiteColor];
        messLabel.text = @"2";
        messLabel.font = [UIFont systemFontOfSize:10];
        [messImage addSubview:messLabel];
        [messLabel release];
    //房间按钮
        UIImage * homeImg = [UIImage imageNamed:@"fangjiananniu.png"];
        UIImage * homeImgSelect = [UIImage imageNamed:@"fangjiananniu_anxia.png"];
        _HomeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _HomeButton.frame = CGRectMake(-2, _messageButton.frame.size.height+_messageButton.frame.origin.y+5, 80, homeImg.size.height);
        [_HomeButton setBackgroundImage:homeImg forState:UIControlStateNormal];
        [_HomeButton setBackgroundImage:homeImgSelect forState:UIControlStateHighlighted];
        [_HomeButton setTitle:@"房间" forState:UIControlStateNormal];
        _HomeButton.titleLabel.font = [UIFont boldSystemFontOfSize:17];
        [_HomeButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:_HomeButton];
    //比赛按钮
        _MatchButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _MatchButton.frame = CGRectMake(_HomeButton.frame.size.width+_HomeButton.frame.origin.x-2, _messageButton.frame.size.height+_messageButton.frame.origin.y+5, 80, homeImg.size.height);
        [_MatchButton setBackgroundImage:homeImg forState:UIControlStateNormal];
        [_MatchButton setBackgroundImage:homeImgSelect forState:UIControlStateHighlighted];
        [_MatchButton setTitle:@"比赛" forState:UIControlStateNormal];
        _MatchButton.titleLabel.font = [UIFont boldSystemFontOfSize:17];
        [_MatchButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self addSubview:_MatchButton];
    //快速开始按钮
        UIImage * startImg = [UIImage imageNamed:@"kuaisukaishi.png"];
        UIImage * startImgSelect = [UIImage imageNamed:@"kuaisukaishi_anxia.png"];
        _StartButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _StartButton.frame = CGRectMake(_MatchButton.frame.size.width+_MatchButton.frame.origin.x+3, _messageButton.frame.origin.y+10,startImg.size.width, startImg.size.height);
        [_StartButton setBackgroundImage:startImg forState:UIControlStateNormal];
        [_StartButton setBackgroundImage:startImgSelect forState:UIControlStateHighlighted];
        [_StartButton setTitle:@"快速开始" forState:UIControlStateNormal];
        _StartButton.titleLabel.font = [UIFont boldSystemFontOfSize:25];
        [self addSubview:_StartButton];
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
