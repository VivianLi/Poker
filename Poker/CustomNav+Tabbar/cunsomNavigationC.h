//
//  cunsomNavigationC.h
//  自定义导航控制器
//
//  Created by youcheng on 13-12-2.
//  Copyright (c) 2013年 shanGuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cunsomNavigationC : UINavigationController
-(void)swipUpNavigation;
@end
//类目继承uinavgationbar  覆盖-(void)drawRect:(CGRect)rect方法
@interface UINavigationBar (cusomNavigationB)

@end