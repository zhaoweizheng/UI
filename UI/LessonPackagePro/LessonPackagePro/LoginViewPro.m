//
//  LoginViewPro.m
//  LessonPackagePro
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "LoginViewPro.h"
#import "LTView.h"
#import "RegisterView.h"

@implementation LoginViewPro


- (id)initWithFrame:(CGRect)frame
{


    self = [super initWithFrame:frame];
    if (self) {
        self.frame = [[UIScreen mainScreen] bounds];//获取屏幕大小
        
        self.userView = [[LTView alloc] initWithFrame:CGRectMake(0, 40, self.frame.size.width, 40)];
        
        _userView.label.text = @"用户名:";
        _userView.textField.placeholder = @"请输入用户名";
        [self addSubview:_userView];
        [_userView release];
        
        
        self.passwodView = [[LTView alloc] initWithFrame:CGRectMake(0, 100, self.frame.size.width, 40)];
        _passwodView.label.text = @"密码";
        _passwodView.textField.placeholder =@"请输入密码";
        [self addSubview:_passwodView];
        [_passwodView release];
        
        
#pragma mark --登陆页面---button
        //登陆按钮
        _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _loginButton.frame = CGRectMake(20, 200, 100, 40);
        _loginButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _loginButton.titleLabel.font =[UIFont systemFontOfSize:25];
        NSLog(@"zhao");
        [_loginButton setTitle:@"登陆" forState:UIControlStateNormal];
        _loginButton.layer.cornerRadius = 10;
        [_loginButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_loginButton];
        
        //注册按钮
        _resgisterButton1 = [UIButton buttonWithType:UIButtonTypeSystem];
        _resgisterButton1.frame = CGRectMake(250, 200, 100, 40);
        _resgisterButton1.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _resgisterButton1.titleLabel.font = [UIFont systemFontOfSize:25];
       _resgisterButton1.layer.cornerRadius = 10;
        [_resgisterButton1 setTitle:@"注册" forState:UIControlStateNormal];
        [self addSubview:_resgisterButton1];
        
        //密码找回按钮
       _forgetButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _forgetButton.frame = CGRectMake(140, 200, 100, 40);
        _forgetButton.backgroundColor = [UIColor colorWithRed:1.000 green:0.314 blue:0.325 alpha:1.000];
        _forgetButton.layer.cornerRadius = 10;
        [_forgetButton setTitle:@"密码找回" forState:UIControlStateNormal];
        [self addSubview:_forgetButton];
        
        
    }

    return self;
}



#pragma mark --登陆方法
- (void)login
{
  
    if (_userView.textField.text.length == 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"用户名不能为空" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView show];
        [alertView release];
    } else if (_passwodView.textField.text.length == 0) {
        
        UIAlertView *alertView1 = [[UIAlertView alloc] initWithTitle:@"提示" message:@"密码不能为空" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles: nil];
        [alertView1 show];
        [alertView1 release];
        
    } else {
        
        if ([_userView.textField.text isEqualToString:@"123" ] && [_passwodView.textField.text isEqualToString:@"321"]) {
            
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








-(void)dealloc
{

    [_userView release];
    [_passwodView release];
    [_loginButton release];
    [_forgetButton release];
    [_resgisterButton1 release];
    [super dealloc];

}

@end
