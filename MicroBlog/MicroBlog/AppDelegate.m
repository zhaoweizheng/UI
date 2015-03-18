//
//  AppDelegate.m
//  MicroBlog
//
//  Created by lanouhn on 15/3/17.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootTableViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    application.statusBarHidden = NO;//YES状态栏隐藏NO不隐藏
    //1.创建窗口
    self.window = [[UIWindow alloc] init];
    self.window.frame = [UIScreen mainScreen].bounds;
    
    //2.设置窗口的跟控制器
    
    
     //self.window.rootViewController= [[RootTableViewController alloc] init];
   
    //3.显示窗口(成为主窗口)
    [self.window makeKeyAndVisible];
    
    return YES;
}
//添加子控制器
UIViewController *home = [[UIViewController alloc] init];
home.view.backgroundColor = [UIColor redColor];
[self addChildViewController:home];

UIViewController *message = [[UIViewController alloc] init];
message.view.backgroundColor = [UIColor blueColor];
[self addChildViewController:message];

UIViewController *discover = [[UIViewController alloc] init];
discover .view.backgroundColor = [UIColor yellowColor];
[self addChildViewController:discover ];

UIViewController *me = [[UIViewController alloc] init];
me.view.backgroundColor = [UIColor grayColor];
[self addChildViewController:me];
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
