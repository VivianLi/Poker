//
//  cunstomTabBarC.h
//  Custom导航
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 guanshan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cunstomTabBarC : UITabBarController
{
    @private
    UIImageView * selecView;
    UIImageView * tabBarBG;
    NSMutableArray * selectArray;
    UILabel * selectLabel;
}
-(void)showTabBar;
-(void)hiddenTabBar;
-(void)swipDown;
@end
