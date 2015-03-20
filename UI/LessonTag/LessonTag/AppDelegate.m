//
//  AppDelegate.m
//  LessonTag
//
//  Created by lanouhn on 15/3/17.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "LTView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)dealloc
{

    [_window release];
    [super dealloc];

}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    /*
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    //添加背景颜色
    redView.backgroundColor = [UIColor redColor];
    //同时设置一个tag值
    redView.tag = 100;
    //添加到父视图当中
    [self.window addSubview:redView];
    [redView release];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    greenView.tag = 101;
    [redView addSubview:greenView];
    [greenView release];
    
    //调用私有方法
    [self changeViewColor];
     */

    
    //创建一个LTView对象
    LTView *ltView = [[LTView alloc] initWithFrame:CGRectMake(0, 50, self.window.frame.size.width, 80)];
    ltView.backgroundColor = [UIColor grayColor];
    //更改自己独有的特殊需求
    ltView.textField.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:ltView];
    [ltView release];
    
    
    LTView *ltView2 = [[LTView alloc] initWithFrame:CGRectMake(0, 150, self.window.frame.size.width, 80)];
    ltView2.backgroundColor = [UIColor grayColor];
    //更改自己独有的特殊需求
    ltView2.textField.backgroundColor = [UIColor greenColor];
    [self.window addSubview:ltView2];
    [ltView2 release];
    
    
    
    
    
    return YES;
}


- (void)changeViewColor
{


    UIView *changeView = [self.window viewWithTag:100];
    changeView.backgroundColor = [UIColor yellowColor];

    //父类视图可以调用
    UIView *changeView2 = [changeView viewWithTag:101];
    changeView2.backgroundColor = [UIColor blackColor];

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
