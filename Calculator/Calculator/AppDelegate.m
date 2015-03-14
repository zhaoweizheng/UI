//
//  AppDelegate.m
//  Calculator
//
//  Created by lanouhn on 15/3/3.
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
    
    
    UIImage *draw = [UIImage imageNamed:@"Default.png"];
    UIImageView *drawView = [[UIImageView alloc] initWithImage:draw];
    [drawView setFrame:CGRectMake(0, 0, 320, 480)];
    [self.window addSubview:drawView];
    
    
    
    UITextField *firstNumber = [[UITextField alloc] initWithFrame:CGRectMake(20, 40, 50, 30)];
    firstNumber.borderStyle = UITextBorderStyleLine;//边框
    firstNumber.keyboardType = UIKeyboardTypeNumberPad;//弹出数字键盘
    firstNumber.tag = 100;
    [self.window addSubview:firstNumber];
    
    UILabel *plusLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 40, 20, 30)];
    plusLabel.text = @"+";
    plusLabel.textAlignment = NSTextAlignmentCenter;
    [self.window addSubview:plusLabel]; 
    
    UITextField *secondNumber = [[UITextField alloc] initWithFrame:CGRectMake(110, 40, 50, 30)];
    secondNumber.borderStyle = UITextBorderStyleLine;
    secondNumber.keyboardType = UIKeyboardTypeNumberPad;
    secondNumber.tag = 200;
    [self.window addSubview:secondNumber];
//    
    UILabel *equalLable = [[UILabel alloc] initWithFrame:CGRectMake(150, 40, 50, 30)];
    equalLable.text = @" = ?";
    equalLable.textAlignment = NSTextAlignmentCenter;
    equalLable.tag = 300;
    [self.window addSubview:equalLable];
    
    UIButton *equalButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    equalButton.frame = CGRectMake(20 , 100, 280, 30);
    [equalButton setTitle:@"计算" forState:UIControlStateNormal];
    [equalButton addTarget:self action:@selector(plus:) forControlEvents:UIControlEventTouchUpInside];
    equalButton.layer.borderColor =  [[UIColor blueColor] CGColor];
    equalButton.layer.borderWidth = 1.0f;
    [self.window addSubview:equalButton];

    
    
    return YES;
}
- (void)plus:(UIButton *)button
{

    UITextField *firstTF = (UITextField *)[self.window viewWithTag:100];
    UITextField *seconTF = (UITextField *)[self.window viewWithTag:200];
    
    NSString *firstNumberStr = firstTF.text;
    NSString *secondNumberStr = seconTF.text;
    
    int result = [firstNumberStr intValue] + [secondNumberStr intValue];
    
    UILabel *resultLabel = (UILabel *)[self.window viewWithTag:300];
    resultLabel.text = [NSString stringWithFormat:@" = %d",result];
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
