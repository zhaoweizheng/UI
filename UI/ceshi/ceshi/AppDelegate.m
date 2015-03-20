//
//  AppDelegate.m
//  ceshi
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"

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
//    RootViewController *rootVC = [[RootViewController alloc] init];
//    self.window.rootViewController = rootVC;
//    [rootVC release];
    
    
    
    
    //创建一个登录页面
    UIView *loginView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    loginView.backgroundColor = [UIColor colorWithRed:0.759 green:1.000 blue:0.311 alpha:1.000];
    [self.window addSubview:loginView];
    [loginView release];
    
    
    
    
    //
    UILabel *nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 110, 100, 20)];
    nameLabel.text = @"用户名:";
    [loginView addSubview:nameLabel];
    [nameLabel release];
    UILabel *passwordLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 160, 100, 20)];
    passwordLabel.text = @"密    码:";
    [loginView addSubview:passwordLabel];
    [passwordLabel release];
    
    
    UITextField *nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(135, 105, 200, 30)];
    nameTextField.borderStyle = UITextBorderStyleRoundedRect;
    nameTextField.placeholder = @"手机号/邮箱";
    nameTextField.tag = 102;
    nameTextField.keyboardType = UIKeyboardTypeDefault;
    nameTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    nameTextField.delegate = self;
    [loginView addSubview:nameTextField];
    [nameTextField release];
    
    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(135, 155, 200, 30)];
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"请输入密码";
    passwordTextField.tag = 103;
    passwordTextField.keyboardType = UIKeyboardTypeDefault;
    passwordTextField.secureTextEntry = YES;
    passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    passwordTextField.delegate = self;
    [loginView addSubview:passwordTextField];
    [passwordTextField release];
    
    
    
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
    [seachButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [loginView addSubview:seachButton];
    
   
    
#pragma mark ---注册页面
    
//    
//    //view = containerView
//    UIView *containerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 375, 667)];
//    containerView.backgroundColor = [UIColor greenColor];
//    containerView.tag = 103;
//    
//    //[self.window bringSubviewToFront:loginView];
//    // UILable and UItextField
//    [self unLableX:587 Y:592 Name:@"用户名 :" ShadowName:@"请输入用户名"];
//    [self unLableX:527 Y:530 Name:@"密    码 :" ShadowName:@"请输入密码"];
//    [self unLableX:467 Y:470 Name:@"确认密码 :" ShadowName:@"请再次输入密码"];
//    [self unLableX:407 Y:412 Name:@"手机号 :" ShadowName:@"请输入手机号"];
//    //[self ]
//    [self unLableX:350 Y:355 Name:@"邮    箱:" ShadowName:@"请输入邮箱"];
//    //UIButton
//    [self unButtonX:320 Y:300 Name:@"登陆" HightName:@"000"];
//    [self unButtonX:135 Y:300 Name:@"注册" HightName:@"000"];
//    
//
//    
//    
//    [self.window addSubview:containerView];
//    [containerView release];
//
//    
//    
//    
//    
//    
//    
   
    
      [self.window bringSubviewToFront:loginView];
    
    
    return YES;
}


- (void)clickedButton
{


    [self.window bringSubviewToFront:[self.window viewWithTag:103]];


}


//通用的UILable and UItextField方法
- (void)unLableX:(NSInteger)aX Y:(NSInteger)aY Name:(NSString *)aName ShadowName:(NSString *)aShadowName
{
    //UIView *view = [self.window viewWithTag:103];
    
    //通用的lable方法
    UILabel *unLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, self.window.frame.size.height - aX, 100, 20)];
    unLabel.text = aName;
    unLabel.font = [UIFont systemFontOfSize:20.0];
    [self.window addSubview:unLabel];
    [unLabel release];
    
    //通用的textFiled方法
    UITextField *unTextField = [[UITextField alloc] initWithFrame:CGRectMake(135, self.window.frame.size.height - aY, 200, 30)];
    unTextField.tag = 100;
    unTextField.borderStyle = UITextBorderStyleRoundedRect;//文本框是圆角的
    //unTextField.delegate = self;
    //unTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;//键盘直接出来数字模式键盘
    unTextField.placeholder =aShadowName ;//palceholder可以初始化就带字(阴影字体),占位,
    [self.window addSubview:unTextField];
    [unTextField release];
    
    
}



//通用的button方法
- (void)unButtonX:(NSInteger)aX Y:(NSInteger)aY Name:(NSString *)aName HightName:(NSString *)aHightName
{
    
    UIButton *unButton = [[UIButton alloc] initWithFrame:CGRectMake(self.window.frame.size.width - aX, self.window.frame.size.height - aY, 80, 35)];
    [unButton setTitle:aName forState:UIControlStateNormal];//显示字体
    [unButton setTitle:aHightName forState:UIControlStateHighlighted];//高亮时显示字体
    [unButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];//给button上的字体设置颜色,初始化是白色的,如果底色也是白色会看不见
    unButton.backgroundColor = [UIColor whiteColor];
    unButton.layer.borderColor = [[UIColor blueColor] CGColor];//给按钮添加蓝色边
    unButton.layer.borderWidth = 1.0f;//边框宽度
    unButton.layer.cornerRadius = 10.0f;////给按钮设置弧度,
    unButton.layer.masksToBounds = YES;//使用圆角
    [self.window addSubview:unButton];
    [unButton release];
    
    
}




- (void)Judgement
{
    
    
    
    UITextField *namefile = (UITextField *)[self.window viewWithTag:102];
    UITextField *passfile = (UITextField *)[self.window viewWithTag:103];
    NSString *name = @"zhao@163.com";
    NSString *password = @"zhao123";
    if ([namefile.text isEqualToString:name] && [passfile.text isEqualToString:password]) {
        NSLog(@"登陆成功!");
    } else {
        
        
        UIAlertView *errorView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名或密码错误,请重新输入" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
        [errorView show];
        [errorView release];
        namefile.text = nil;
        passfile.text = nil;
        
    }
    
    
}


#pragma make - UITextFieldDelegate



- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    //NSLog(@"%s",__FUNCTION__);//打印当前的方法名
    return YES;
    
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
