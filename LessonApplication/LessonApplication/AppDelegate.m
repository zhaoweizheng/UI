//
//  AppDelegate.m
//  LessonApplication
//
//  Created by lanouhn on 15/3/3.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
@implementation AppDelegate



//程序完成启动
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);//打印函数名和多少行
    
    
    
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
  
    RootViewController *rootVC = [[RootViewController alloc] init];
    self.window.rootViewController = rootVC;//指定给window
   
    
    return YES;
}

//程序将要取消活动状态
- (void)applicationWillResignActive:(UIApplication *)application
{
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}


//程序进入后台
- (void)applicationDidEnterBackground:(UIApplication *)application
{
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


//程序将要进入前台
- (void)applicationWillEnterForeground:(UIApplication *)application
{
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}
//

//应用程序变为活动状态
- (void)applicationDidBecomeActive:(UIApplication *)application
{
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


//程序退出
- (void)applicationWillTerminate:(UIApplication *)application
{
     NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
