//
//  AppDelegate.m
//  LessonPackagePro
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginView.h"
#import "LTView.h"
#import "LoginViewPro.h"
#import "registerView.h"
#import "RegisterView.h"
#import "SerchView.h"



#define kREGISTERVIEW 100
#define kLOGINVIEW 200
#define kLOGINUSERTEXTFIELD 201
#define kLOGINPASSWORDTEXTFIELD 202
#define kFINDVIEW 300


@interface AppDelegate ()
{

    LoginViewPro *loginView;
    RegisterView *registerView;
    SerchView *serchView;

}


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
    
    
    
    
//    LoginView *loginView = [[LoginView alloc] initWithFrame:CGRectZero];
//    loginView.backgroundColor = [UIColor colorWithPatternImage:@"123.png"];
//    [_window addSubview:loginView];
//    [loginView release];
    
//    
//    LTView *view = [[LTView alloc] initWithFrame:CGRectMake(0, 20, _window.frame.size.width, 40)];
//    view.label.text = @"用户名:";
//    view.textField.placeholder = @"请输入用户名";
//    [_window addSubview:view];
//    [view release];
    

   
    
    
    registerView = [[RegisterView alloc] initWithFrame:CGRectMake(0, 20, _window.frame.size.width, 40)];
    registerView.backgroundColor = [UIColor whiteColor];
    [registerView.cancelButton addTarget:self action:@selector(pushTOLoginView:) forControlEvents:UIControlEventTouchUpInside];
    registerView.tag = kREGISTERVIEW;//registerButton
    [_window addSubview:registerView];
    [registerView release];
    
    
    
    serchView = [[SerchView alloc] initWithFrame:CGRectMake(0, 20, _window.frame.size.width, 40)];
    serchView.backgroundColor = [UIColor whiteColor];
    [serchView.cancelButton addTarget:self action:@selector(pushTOLoginView:) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:serchView];
    [serchView release];

    
    
    loginView = [[LoginViewPro alloc] initWithFrame:CGRectMake(0, 20, _window.frame.size.width, 40)];
    //loginView.tag = kLOGINVIEW;
    loginView.backgroundColor = [UIColor whiteColor];
    [loginView.resgisterButton1 addTarget:self action:@selector(pushToRegisterView:) forControlEvents:UIControlEventTouchUpInside];
    [loginView.forgetButton addTarget:self action:@selector(serchButton:) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:loginView];
    [loginView release];
    
    
    
    
   // [self.window bringSubviewToFront:loginView];
    return YES;
}



#pragma mark --登陆跳转到注册页面
- (void)pushToRegisterView:(UIButton *)button {
    
    [self.window bringSubviewToFront:registerView];
    
}


#pragma mark --注册跳转到登陆页面
- (void)pushTOLoginView:(UIButton *)button
{
    [self.window bringSubviewToFront:loginView];
}


- (void)serchButton:(UIButton *)button
{

    [self.window bringSubviewToFront:serchView];


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
