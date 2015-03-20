//
//  LoginView.m
//  lessonPackage
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "LoginView.h"

@implementation LoginView

-(void)dealloc
{

    [_loginButton release];
    [_loginButton release];
    [_registerButton release];
    [_userTextField release];
    [_passwordTextField release];
    [super dealloc];
}


//重写初始化方法,来完成对登陆页面控件的创建
- (id)initWithFrame:(CGRect)frame
{
    self  = [super initWithFrame:frame];
    if (self) {
        //重置frame, 保证登陆页面和屏幕大小一致
        self.frame = [[UIScreen mainScreen]bounds];//或者.bounds
        
        
        
        
        
#pragma mark --登陆页面--lable
        //登陆页面
//        UIView *loginView = [[UIView alloc] initWithFrame:_window.frame];//_window.bouns
//        loginView.backgroundColor = [UIColor whiteColor];
//        loginView.tag = kLOGINVIEW;
//        //loginView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"123.jpg"]];
//        [self.window addSubview:loginView];
//        [loginView release];
        
        
        //用户名lable
        UILabel *userLable = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 100, 40)];
        userLable.backgroundColor = [UIColor whiteColor];
        userLable.text = @"用户名:";
        [self addSubview:userLable];
        [userLable release];
        
        //密码lable
        UILabel *passwordLable = [[UILabel alloc] initWithFrame:CGRectMake(40,100, 100, 40)];
        passwordLable.backgroundColor = [UIColor whiteColor];
        passwordLable.text = @"密   码:";
        [self addSubview:passwordLable];
        [passwordLable release];
        
        
#pragma mark --登陆页面---textfield
        
        //密码textfield
        self.passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 100, 200, 40)];
        _passwordTextField.borderStyle = UITextBorderStyleRoundedRect;
        _passwordTextField.placeholder = @"请输入密码";
        //_passwordTextField.delegate = self;
        _passwordTextField.secureTextEntry = YES;
        _passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
       // _passwordTextField.tag = kLOGINPASSWORDTEXTFIELD;
        [self addSubview:_passwordTextField];
        [_passwordTextField release];
        //用户名textfield
        self.userTextField = [[UITextField alloc] initWithFrame:CGRectMake(140, 40, 200, 40)];
        _userTextField.borderStyle = UITextBorderStyleRoundedRect;
        _userTextField.placeholder = @"请输入用户名";
        //_userTextField.delegate = self;
        _userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
        //_userTextField.tag = kLOGINUSERTEXTFIELD;
        [self addSubview:_userTextField];
        [_userTextField release];
        
#pragma mark --登陆页面---button
        //登陆按钮
        self.loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginButton.frame = CGRectMake(20, 160, 100, 40);
        _loginButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _loginButton.titleLabel.font =[UIFont systemFontOfSize:25];
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        [self addSubview:_loginButton];
        
        //注册按钮
        self.registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _registerButton.frame = CGRectMake(250, 160, 100, 40);
        _registerButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
        [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
        [self addSubview:_registerButton];
        
        //密码找回按钮
         self.searchButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _searchButton.frame = CGRectMake(140, 160, 100, 40);
        _searchButton.backgroundColor = [UIColor colorWithRed:1.000 green:0.314 blue:0.325 alpha:1.000];
        [_searchButton setTitle:@"密码找回" forState:UIControlStateNormal];
        [self addSubview:_searchButton];
        

    }

    return self;
}






@end
