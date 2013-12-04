//
//  HomeView.m
//  Poker
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 youcheng. All rights reserved.
//

#import "HomeView.h"
#import "HomeCell.h"
@implementation HomeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        NSString * str1 = @"初级";
        NSString * str2 = @"中级";
        NSString * str3 = @"高级";
        
        flog = YES;
        
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
        self.userInteractionEnabled = YES;
        UIImage * selectImage = [UIImage imageNamed:@"dianlianganniu.png"];
        UIImage * image = [UIImage imageNamed:@"4.png"];
        
        UIImageView * imgV = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, Screen_width, 3)];
        imgV.backgroundColor = [UIColor grayColor];
        [self addSubview:imgV];
        [imgV release];
        
        aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        aButton.frame =CGRectMake(0, 4, 105, 37);
        [aButton setTitle:str1  forState:UIControlStateNormal];
        [aButton setBackgroundImage:image forState:UIControlStateNormal];
        [aButton addTarget:self action:@selector(goElementary) forControlEvents:UIControlEventTouchUpInside];
        [aButton setBackgroundImage:selectImage forState:UIControlStateSelected];
        aButton.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [aButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self addSubview:aButton];
        aButton.selected = YES;
        
        aButton2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        aButton2.frame =CGRectMake(107, 3, 105, 37);
        [aButton2 setTitle:str2  forState:UIControlStateNormal];
        [aButton2 setBackgroundImage:image forState:UIControlStateNormal];
        [aButton2 setBackgroundImage:selectImage forState:UIControlStateSelected];
        [aButton2 addTarget:self action:@selector(goMiddle) forControlEvents:UIControlEventTouchUpInside];
        [aButton2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        aButton2.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [self addSubview:aButton2];
        
        aButton3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        aButton3.frame =CGRectMake(214, 3, 105, 37);
        [aButton3 setTitle:str3  forState:UIControlStateNormal];
        [aButton3 setBackgroundImage:image forState:UIControlStateNormal];
        [aButton3 setBackgroundImage:selectImage forState:UIControlStateSelected];
        [aButton3 addTarget:self action:@selector(goBest) forControlEvents:UIControlEventTouchUpInside];
        [aButton3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        aButton3.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [self addSubview:aButton3];
        
        tableVC = [[UITableView alloc]initWithFrame:CGRectMake(0,37, Screen_width, Screen_height-135-49-37-5-50) style:UITableViewStylePlain];
        tableVC.delegate = self;
        tableVC.dataSource = self;
        tableVC.userInteractionEnabled = YES;
        tableVC.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];
        tableVC.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self addSubview:tableVC];
        [tableVC release];
        if (flog == YES)
        {
            //广告
            UIImage * adImg = [UIImage imageNamed:@"guanggao.png"];
            advertImage = [[UIImageView alloc]initWithFrame:CGRectMake(0, 237, Screen_width, 50)];
            [advertImage setImage:[adImg resizableImageWithCapInsets:UIEdgeInsetsMake(15, 15, 15, 15)]];
            advertImage.userInteractionEnabled = YES;
            if (iPhone5)
            {
                advertImage.frame = CGRectMake(0, 330, Screen_width, 50);
                tableVC.frame = CGRectMake(0,37, Screen_width, Screen_height-135-49-37-5-50);
            }
            else
            {
                advertImage.frame = CGRectMake(0, 237, Screen_width, 55);
                tableVC.frame = CGRectMake(0,37, Screen_width, Screen_height-135-49-37-5-55);
            }
            [self addSubview:advertImage];
            [advertImage release];
            
            UIImage * signImg = [UIImage imageNamed:@"guanggaozi.png"];
            UIImageView * singImage = [[UIImageView alloc]initWithImage:signImg];
            singImage.frame = CGRectMake(20, 5, signImg.size.width, signImg.size.height);
            [advertImage addSubview:singImage];
            singImage.userInteractionEnabled = YES;
            [singImage release];
            
            //广告文字
            UIImage * wenziImage = [UIImage imageNamed:@"guanggao_zi.png"];
            UIImageView * textImage = [[UIImageView alloc]initWithImage:wenziImage];
            textImage.frame = CGRectMake(singImage.frame.size.width+singImage.frame.origin.x+50, 10, wenziImage.size.width, wenziImage.size.height);
            textImage.userInteractionEnabled = YES;
            [advertImage addSubview:textImage];
            [textImage release];
            
            _deletButton = [UIButton buttonWithType:UIButtonTypeCustom];
            UIImage * deleteImage = [UIImage imageNamed:@"guangbianniu.png"];
            [_deletButton setImage:deleteImage forState:UIControlStateNormal];
            _deletButton.frame = CGRectMake(Screen_width-13, 2, deleteImage.size.width, deleteImage.size.height);
            [_deletButton addTarget:self action:@selector(goDeleteImage) forControlEvents:UIControlEventTouchUpInside];
            [advertImage addSubview:_deletButton];

        }
    }
    return self;
}
#pragma mark - 删除广告
- (void)goDeleteImage
{
    [_deletButton removeFromSuperview];
    [advertImage removeFromSuperview];
    tableVC.frame = CGRectMake(0,37, Screen_width, Screen_height-135-49-37-5);
    flog = NO;
}
#pragma mark - 初级
- (void)goElementary
{
    aButton.selected = YES;
    aButton2.selected = NO;
    aButton3.selected = NO;
    [aButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [aButton2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [aButton3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
}
#pragma mark - 中级
- (void)goMiddle
{
    aButton.selected = NO;
    aButton2.selected = YES;
    aButton3.selected = NO;
    [aButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [aButton2 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [aButton3 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    
}
#pragma mark - 高级
- (void)goBest
{
    aButton.selected = NO;
    aButton2.selected = NO;
    aButton3.selected = YES;
    [aButton setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [aButton2 setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [aButton3 setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}
#pragma mark - tableView的代理方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return  10;
}
//初始化tableViewCell
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * cellidentifier = @"cell";
    _cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier];
    if (_cell == nil)
    {
        _cell = [[HomeCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellidentifier];
        _cell.selectionStyle = UITableViewCellSelectionStyleNone;
        _cell.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ditu.png"]];

    }
    return _cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
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
