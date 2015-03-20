//
//  AppDelegate.m
//  ceshi
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
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
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
  
    
    
    
#pragma mark ---注册页面
    
    
    //view = containerView
    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    containerView.backgroundColor = [UIColor whiteColor];
    containerView.tag = 105;
    
    
    //用户名
    LTView *nameView = [[LTView alloc] initWithFrame:CGRectMake(0, 50, self.window.frame.size.width, 50)];
    nameView.nameLable.text = @"用户名:";
    nameView.textField.placeholder = @"请输入用户名";
    [containerView addSubview:nameView];
    [nameView release];
    
    //密码
    LTView *passwordView = [[LTView alloc] initWithFrame:CGRectMake(0, 100, self.window.frame.size.width, 50)];
    passwordView.nameLable.text = @"密    码:";
    passwordView.textField.placeholder = @"请输入密码";
    passwordView.textField.secureTextEntry = YES;
    [containerView addSubview:passwordView];
    [passwordView release];
    
    
    //密码确认
    LTView *password2View = [[LTView alloc] initWithFrame:CGRectMake(0, 150, self.window.frame.size.width, 50)];
    password2View.nameLable.text = @"密码确认:";
    password2View.textField.placeholder = @"请再次输入密码";
    password2View.textField.secureTextEntry = YES;
    [containerView addSubview:password2View];
    [password2View release];
    
    
    //手机号
    LTView *phoneView = [[LTView alloc] initWithFrame:CGRectMake(0, 200, self.window.frame.size.width, 50)];
    phoneView.nameLable.text = @"手机号:";
    phoneView.textField.placeholder = @"请输入手机号";
    phoneView.textField.keyboardType = UIKeyboardTypeNumberPad;
    [containerView addSubview:phoneView];
    [phoneView release];
    
    
    //邮箱
    LTView *emailView = [[LTView alloc] initWithFrame:CGRectMake(0, 250, self.window.frame.size.width, 50)];
    emailView.nameLable.text = @"邮    箱:";
    emailView.textField.placeholder = @"请输入手机号";
    [containerView addSubview:emailView];
    [emailView release];
    
    [self.window addSubview:containerView];
    [containerView release];
    
    
    
    
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeSystem];
    button1.frame = CGRectMake(40, 350, 60, 40);
    [button1 setTitle:@"注册" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:25];
    [button1 addTarget:self action:@selector(clickedButton5) forControlEvents:UIControlEventTouchUpInside];
    [containerView addSubview:button1];
    
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeSystem];
    button2.frame = CGRectMake(275, 350, 60, 40);
    [button2 setTitle:@"返回" forState:UIControlStateNormal];
    button2.titleLabel.font = [UIFont systemFontOfSize:25];
    [button2 addTarget:self action:@selector(clickedButton4) forControlEvents:UIControlEventTouchUpInside];
    [containerView addSubview:button2];
    
    
    
    
    
 #pragma mark ---主页面  欢迎回来
    
    

    UIView *mainView = [[UIView alloc] initWithFrame:CGRectMake(0, 0,375, 667)];
    mainView.backgroundColor = [UIColor yellowColor];
    mainView.tag = 107;
    [self.window addSubview:mainView];
    [mainView release];
    UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(50, 20,250, 200)];

    lable.text = @"主人,欢迎回来";
    lable.font = [UIFont systemFontOfSize:25];
    [mainView addSubview:lable];
    [lable release];
    
    UIButton *quitButton = [UIButton buttonWithType:UIButtonTypeSystem];
    quitButton.frame = CGRectMake(40, 250, 200, 40);
    [quitButton setTitle:@"退出" forState:UIControlStateNormal];
    quitButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [quitButton addTarget:self action:@selector(clickedButton4) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:quitButton];

//    UIImageView *imageView = [[UIImageView alloc] initWithImage:@"123.png"];
//    imageView.frame = CGRectMake(20, 20, 280, 280);
//    [mainView addSubview:imageView];
//    [imageView release];
    
    
 #pragma mark ---密码找回界面
    UIView *passwordView2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
    passwordView2.backgroundColor = [UIColor whiteColor];
    passwordView2.tag = 106;
    [self.window addSubview:passwordView2];
    [passwordView2 release];

    LTView *phoneView2 = [[LTView alloc] initWithFrame:CGRectMake(0, 100, self.window.frame.size.width, 50)];
    phoneView2.nameLable.text = @"手机号:";
    phoneView2.textField.placeholder = @"请输入手机号";
    [passwordView2 addSubview:phoneView2];
    [phoneView2 release];
    
    
    UIButton *serchButton2 = [UIButton buttonWithType:UIButtonTypeSystem];
    serchButton2.frame = CGRectMake(40, 250, 60, 40);
    [serchButton2 setTitle:@"找回" forState:UIControlStateNormal];
    serchButton2.titleLabel.font = [UIFont systemFontOfSize:25];
    [serchButton2 addTarget:self action:@selector(clickedButton3) forControlEvents:UIControlEventTouchUpInside];
    [passwordView2 addSubview:serchButton2];
    
    
    UIButton *serchButton3 = [UIButton buttonWithType:UIButtonTypeSystem];
    serchButton3.frame = CGRectMake(275, 250, 60, 40);
    [serchButton3 setTitle:@"取消" forState:UIControlStateNormal];
    serchButton3.titleLabel.font = [UIFont systemFontOfSize:25];
    [serchButton3 addTarget:self action:@selector(clickedButton4) forControlEvents:UIControlEventTouchUpInside];
    [passwordView2 addSubview:serchButton3];
    
    
//    
#pragma mark ---登陆页面
    
    //创建一个登录页面
    UIView *loginView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    loginView.tag = 108;
    loginView.backgroundColor = [UIColor whiteColor];
    [self.window addSubview:loginView];
    [loginView release];
    
    
    //用户名
    LTView *nameView2 = [[LTView alloc] initWithFrame:CGRectMake(0, 50, self.window.frame.size.width, 50)];
    nameView2.nameLable.text = @"用户名:";
    nameView2.textField.placeholder = @"请输入用户名";
    nameView2.textField.tag = 102;
    [loginView addSubview:nameView2];
    [nameView2 release];
    
    
    //密码
    LTView *passwordView3 = [[LTView alloc] initWithFrame:CGRectMake(0, 100, self.window.frame.size.width, 50)];
    passwordView3.nameLable.text = @"密    码:";
    passwordView3.textField.placeholder = @"请输入密码";
    passwordView3.textField.secureTextEntry = YES;
    passwordView3.textField.tag = 103;
    [loginView addSubview:passwordView3];
    [passwordView3 release];
    
    UIButton *longinButton = [UIButton buttonWithType:UIButtonTypeSystem];
    longinButton.frame = CGRectMake(40, 250, 60, 40);
    [longinButton setTitle:@"登陆" forState:UIControlStateNormal];
    longinButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [longinButton addTarget:self action:@selector(Judgement) forControlEvents:UIControlEventTouchUpInside];
    [loginView addSubview:longinButton];
    
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    registerButton.frame = CGRectMake(275, 250, 60, 40);
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [registerButton addTarget:self action:@selector(clickedButton) forControlEvents:UIControlEventTouchUpInside];
    [loginView addSubview:registerButton];
    
    
    UIButton *seachButton = [UIButton buttonWithType:UIButtonTypeSystem];
    seachButton.frame = CGRectMake(135, 190, 200, 30);
    [seachButton setTitle:@"密码丢失请点击此处找回" forState:UIControlStateNormal];
    [seachButton addTarget:self action:@selector(clickedButton2) forControlEvents:UIControlEventTouchUpInside];
    
    [seachButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [loginView addSubview:seachButton];
    
    
    
    
    [self.window bringSubviewToFront:loginView];
    
   // [self.window bringSubviewToFront:loginView];
    
    
    
    
    return YES;
}

- (void)clickedButton5
{
    UIAlertView *errorView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"注册成功,点击返回键返回" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [errorView show];
    [errorView release];
}

- (void)clickedButton3
{

    UIAlertView *errorView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"我们将密码发送到手机请注意查收" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
    [errorView show];
    [errorView release];
}

- (void)clickedButton4
{


    [self.window bringSubviewToFront:[self.window viewWithTag:108]];

}

- (void)clickedButton2
{


    [self.window bringSubviewToFront:[self.window viewWithTag:106]];

}


- (void)clickedButton
{


    [self.window bringSubviewToFront:[self.window viewWithTag:105]];


}


- (void)Judgement
{
    
    
    
    UITextField *namefile = (UITextField *)[self.window viewWithTag:102];
    UITextField *passfile = (UITextField *)[self.window viewWithTag:103];
    NSString *name = @"1234";
    NSString *password = @"123";
    if ([namefile.text isEqualToString:name] && [passfile.text isEqualToString:password]) {
        NSLog(@"登陆成功!");
        [self.window bringSubviewToFront:[self.window viewWithTag:107]];
    } else {
        
        
        UIAlertView *errorView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名或密码错误,请重新输入" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
        [errorView show];
        [errorView release];
        namefile.text = nil;
        passfile.text = nil;
        
    }
    
    
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
