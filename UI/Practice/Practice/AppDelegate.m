//
//  AppDelegate.m
//  Practice
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

-(void)dealloc
{
    [_window release];
    [super dealloc];
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    UIView *view = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    view.backgroundColor = [UIColor yellowColor];
    [self.window addSubview:view];
    [view release];
    
    
    
    //lable
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 250, 50)];
    lable.backgroundColor = [UIColor grayColor];
    lable.tag = 101;
    [view addSubview:lable];
    [lable release];
    
    //TextField
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 120, 250, 50)];
    textField.backgroundColor = [UIColor colorWithRed:1.000 green:0.929 blue:0.845 alpha:1.000];
    textField.tag = 100;
//    [textField addTarget:self action:@"()" forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:textField];
    [textField release];
    
    //button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(50, 200, 250, 50);
    button.backgroundColor = [UIColor colorWithRed:1.000 green:0.473 blue:0.677 alpha:1.000];
    [button setTitle:@"按我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(zhao) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
    
    
    
    
    return YES;
}


- (void)zhao
{

    //通过tag值找输入框
    UITextField *textfile =(UITextField *) [_window viewWithTag:100];
    //通过tag找标签
    UILabel *lable = (UILabel *)[_window viewWithTag:101];
    //设置标签内容
    if (lable.text.length == 0) {
        lable.text = textfile.text;
    } else {
    
        lable.text = [NSString stringWithFormat:@"%@%@", lable.text, textfile.text];
    }
    //清空输入框内容
    textfile.text = nil;
    



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
