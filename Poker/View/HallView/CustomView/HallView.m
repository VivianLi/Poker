//
//  HallView.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "HallView.h"

@implementation HallView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        UIImageView * image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, Screen_height-155-49)];
        image.image = [UIImage imageNamed:@"1.jpg"];
        [self addSubview:image];
        [image release];
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
