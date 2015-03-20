//
//  AppDelegate.m
//  lessonPackage
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginView.h"


#define kREGISTERVIEW 100
#define kLOGINVIEW 200
#define kLOGINUSERTEXTFIELD 201
#define kLOGINPASSWORDTEXTFIELD 202
#define kFINDVIEW 300



@interface AppDelegate () {

    LoginView *loginView;

}

@end

@implementation AppDelegate

- (void)dealloc
{

    [_window release];
    [super dealloc];


}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    
    
    
    
    
    
#pragma mark --创建注册页面
 
     [self createRegisterView];
    
#pragma mark --创建查找页面
    
    [self findPasswordView];
    
#pragma mark --创建登陆页面
   
    //[self createLoginView];
    loginView = [[LoginView alloc] initWithFrame:CGRectZero];
    [loginView.loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [_window addSubview:loginView];
    [loginView release];
    

    
    
    return YES;
}


#pragma mark -- 找回密码页面
- (void) findPasswordView {
    
    UIView *findView = [[UIView alloc] initWithFrame:_window.frame];
    findView.backgroundColor = [UIColor whiteColor];
    findView.tag = kFINDVIEW;
    [_window addSubview:findView];
    [findView release];
#pragma mark -- 找回密码页面lable
    
    UILabel *emailLable = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 100, 40)];
    emailLable.backgroundColor = [UIColor whiteColor];
    emailLable.text = @"邮箱:";
    [findView addSubview:emailLable];
    [emailLable release];
    
#pragma mark -- 找回密码页面textfiled
    UITextField *emailTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 40, 200, 40)];
    emailTextField.borderStyle = UITextBorderStyleRoundedRect;
    emailTextField.placeholder = @"请输入邮箱地址";
    emailTextField.delegate = self;
    emailTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    [findView addSubview:emailTextField];
    [emailTextField release];
    
#pragma mark -- 找回密码页面button
    //登陆按钮
    UIButton *emailButton = [UIButton buttonWithType:UIButtonTypeSystem];
    emailButton.frame = CGRectMake(20, 160, 100, 40);
    emailButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    emailButton.titleLabel.font =[UIFont systemFontOfSize:25];
    [emailButton setTitle:@"提交" forState:UIControlStateNormal];
    [findView addSubview:emailButton];
    
    //取消按钮
    UIButton *cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
    cancelButton.frame = CGRectMake(250, 160, 100, 40);
    cancelButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    cancelButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [cancelButton addTarget:self action:@selector(pushTOLoginView) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton setTitle:@"取消" forState:UIControlStateNormal];
    [findView addSubview:cancelButton];
    
    
}



#pragma mark -- 注册页面
- (void)createRegisterView {

    //注册页面
    UIView *registerView = [[UIView alloc] initWithFrame:_window.frame];
    registerView.backgroundColor = [UIColor whiteColor];
    registerView.tag = kREGISTERVIEW;
    [_window addSubview:registerView];
    [registerView release];

    #pragma mark ---注册lable和textfield
    NSArray *nameArray = @[@"用户名", @"密码", @"确认密码", @"手机号", @"邮箱", @"住址"];
    
  
    //创建多个输入控件
    for (NSInteger i = 0; i < 6; i++) {
        //lable
        UILabel *lable = [[UILabel alloc] initWithFrame:CGRectMake(20, 20 + 60*i, 100, 40)];
        lable.backgroundColor = [UIColor whiteColor];
        lable.text = [NSString stringWithFormat:@"%@:",nameArray[i]];
        //lable.text = nameArray[i];
        lable.textAlignment = NSTextAlignmentRight;
        [registerView addSubview: lable];
        [lable release];
        //textfield
        
        UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(140, 20 + 60 * i, 220, 40)];
        textField.backgroundColor = [UIColor whiteColor];
        textField.placeholder = [NSString stringWithFormat:@"请输入%@", nameArray[i]];
        if (i == 1) {
            textField.secureTextEntry = YES;
        }
        if (i == 2) {
            textField.placeholder = @"请再次输入密码";
            textField.secureTextEntry = YES;
        }
        if (i == 3) {
            textField.keyboardType = UIKeyboardTypeNumberPad;
        }
        textField.borderStyle = UITextBorderStyleRoundedRect;
        textField.delegate = self;
        textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        [registerView addSubview:textField];
        [textField release];
        
        
    }
#pragma mark ----注册按钮
    //注册按钮
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    registerButton.frame = CGRectMake(50, 400, 100, 40);
    registerButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    registerButton.layer.cornerRadius = 10;
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [registerView addSubview:registerButton];
    
    //取消按钮
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeSystem];
    searchButton.frame = CGRectMake(225, 400, 100, 40);
    searchButton.backgroundColor =[UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    [searchButton setTitle:@"取消" forState:UIControlStateNormal];
    searchButton.titleLabel.font = [UIFont systemFontOfSize:25];
    searchButton.layer.cornerRadius = 10;
    [searchButton addTarget:self action:@selector(pushTOLoginView) forControlEvents:UIControlEventTouchUpInside];
    [registerView addSubview:searchButton];


}

/*

#pragma mark --登陆页面
- (void)createLoginView
{
    
#pragma mark --登陆页面--lable
    //登陆页面
    UIView *loginView = [[UIView alloc] initWithFrame:_window.frame];//_window.bouns
    loginView.backgroundColor = [UIColor whiteColor];
    loginView.tag = kLOGINVIEW;
    //loginView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"123.jpg"]];
    [self.window addSubview:loginView];
    [loginView release];
    

    //用户名lable
    UILabel *userLable = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 100, 40)];
    userLable.backgroundColor = [UIColor whiteColor];
    userLable.text = @"用户名:";
    [loginView addSubview:userLable];
    [userLable release];
    
    //密码lable
    UILabel *passwordLable = [[UILabel alloc] initWithFrame:CGRectMake(40,100, 100, 40)];
    passwordLable.backgroundColor = [UIColor whiteColor];
    passwordLable.text = @"密   码:";
    [loginView addSubview:passwordLable];
    [passwordLable release];
    
    
#pragma mark --登陆页面---textfield
    
    //密码textfield
    UITextField *passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 100, 200, 40)];
    passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
    passwordTextField.placeholder = @"请输入密码";
    passwordTextField.delegate = self;
    passwordTextField.secureTextEntry = YES;
    passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    passwordTextField.tag = kLOGINPASSWORDTEXTFIELD;
    [loginView addSubview:passwordTextField];
    [passwordTextField release];
    //用户名textfield
    UITextField *userTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 40, 200, 40)];
    userTextField.borderStyle = UITextBorderStyleRoundedRect;
    userTextField.placeholder = @"请输入用户名";
    userTextField.delegate = self;
    userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    userTextField.tag = kLOGINUSERTEXTFIELD;
    [loginView addSubview:userTextField];
    [userTextField release];

#pragma mark --登陆页面---button
    //登陆按钮
    UIButton *loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
    loginButton.frame = CGRectMake(20, 160, 100, 40);
    loginButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    loginButton.titleLabel.font =[UIFont systemFontOfSize:25];
    [loginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    [loginView addSubview:loginButton];
    
    //注册按钮
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
   registerButton.frame = CGRectMake(250, 160, 100, 40);
    registerButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [registerButton addTarget:self action:@selector(pushToRegisterView) forControlEvents:UIControlEventTouchUpInside];
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [loginView addSubview:registerButton];
    
    //密码找回按钮
    UIButton *searchButton = [UIButton buttonWithType:UIButtonTypeSystem];
    searchButton.frame = CGRectMake(140, 160, 100, 40);
    searchButton.backgroundColor = [UIColor colorWithRed:1.000 green:0.314 blue:0.325 alpha:1.000];
    [searchButton addTarget:self action:@selector(searchFindView) forControlEvents:UIControlEventTouchUpInside];
    [searchButton setTitle:@"密码找回" forState:UIControlStateNormal];
    [loginView addSubview:searchButton];


}
 
*/
#pragma mark --登陆方法
- (void)login
{
//    //登陆页面
//    UIView *loginView = [_window viewWithTag:kLOGINVIEW];
//    //登陆页面上的用户名输入框
//    UITextField *userTextField = (UITextField *)[loginView viewWithTag:kLOGINUSERTEXTFIELD];
//    //登陆页面上的密码输入框
//    UITextField *passwordTextField = (UITextField *)[loginView viewWithTag:kLOGINPASSWORDTEXTFIELD];
//
    if (loginView.userTextField.text.length == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名不能为空" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
        [alertView release];
    } else if (loginView.passwordTextField.text.length == 0) {
        
        UIAlertView *alertView1 = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码不能为空" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView1 show];
        [alertView1 release];
    
    } else {
    
        if ([loginView.userTextField.text isEqualToString:@"123" ] && [loginView.passwordTextField.text isEqualToString:@"321"]) {
            
            UIAlertView *alertView2 = [[UIAlertView alloc] initWithTitle:@"提示" message:@"登陆成功,你挂了" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
            [alertView2 show];
            [alertView2 release];
        } else {
        
        
            UIAlertView *alertView2 = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名或密码错误" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
            [alertView2 show];
            [alertView2 release];
            
        }
    }
}


#pragma mark --登陆跳转到注册页面
- (void)pushToRegisterView {
    
    
    //找到注册页面
    UIView *registerView = [_window viewWithTag:kREGISTERVIEW];
    //注册页面提前
    [_window bringSubviewToFront:registerView];
    
}

#pragma mark --注册跳转到登陆页面
- (void)pushTOLoginView
{
//    //找登陆页面
//    UIView *loginView = [_window viewWithTag:kLOGINVIEW];
    //登陆页面提前
    [_window bringSubviewToFront:loginView];
}


#pragma mark --登陆页面跳转到寻找密码页面
- (void)searchFindView {
    
    
    UIView *findView = [_window viewWithTag:kFINDVIEW];
    [_window bringSubviewToFront:findView];
    
    
}


#pragma mark --键盘回收机制
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    //NSLog(@"%s",__FUNCTION__);//打印当前的方法名
    return YES;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    NSLog(@"%s, %d", __FUNCTION__,__LINE__);
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    NSLog(@"%s, %d", __FUNCTION__,__LINE__);
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    NSLog(@"%s, %d", __FUNCTION__,__LINE__);
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    NSLog(@"%s, %d", __FUNCTION__,__LINE__);
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    NSLog(@"%s, %d", __FUNCTION__,__LINE__);
}

@end
