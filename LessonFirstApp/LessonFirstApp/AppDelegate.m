//
//  AppDelegate.m
//  LessonFirstApp
//
//  Created by lanouhn on 15/3/2.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(50, 20, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    view.clipsToBounds = YES;//把子视图超出的部分裁掉
     view.frame = CGRectMake(50, 50, 200, 300);
    view.alpha = 1;
    view.center = CGPointMake(200, 200);
    view.hidden = NO;
    [self.window addSubview:view];
    
    UIView *bView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 250)];
    bView.backgroundColor = [UIColor greenColor];
    [view addSubview:bView];
    
    UIView *cView = [[UIView alloc] initWithFrame:CGRectMake(70, 70, 100, 100)];
    cView.backgroundColor = [UIColor blackColor];
    [cView setTag:101];
    [view addSubview:cView];

    [view setFrame:CGRectMake(100, 200, 200, 200)];//重新改变坐标
   //UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    
    //从父视图移除
    [bView removeFromSuperview];
   
    UIView *serchView = [view viewWithTag:101];
    NSLog(@"searchView:%@",serchView);;
    
    
    UILabel *helloLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    helloLable.text = @"HelloWorld!";
    helloLable.textAlignment = NSTextAlignmentCenter;
    [self.window addSubview:helloLable];
    
    
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
