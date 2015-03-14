//
//  AppDelegate.h
//  novel_example
//
//  Created by lanouhn on 15/3/1.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CategoryViewController.h"
#import "PlayViewController.h"
#import "TimerViewController.h"
#import "AppDelegate.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
    //
    UIWindow *window;
    //button declare
    UIButton *btn1;
    UIButton *btn2;
    UIButton *btn3;
    UIButton *btn4;
    
    //nav
    UINavigationController *nav1;
    UINavigationController *nav2;
    UINavigationController *nav3;
    UINavigationController *nav4;
    
    
    //4 defube uiviewcontroller
    CategoryViewController *categoryView;
    PlayViewController *playView;
    TimerViewController *timerView;
    AppDelegate *aboultUsView;
    
    
    UIView *viewToolBar;
    
    UIView *v;



}
@property (strong, nonatomic) UIWindow *window;


@end

