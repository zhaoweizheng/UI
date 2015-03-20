//
//  RootViewController.m
//  homeworkTwoDay
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个登录页面
    UIView *loginView = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    loginView.backgroundColor = [UIColor colorWithRed:0.759 green:1.000 blue:0.311 alpha:1.000];
    [self.view addSubview:loginView];
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
    passwordTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    passwordTextField.delegate = self;
    [loginView addSubview:passwordTextField];
    [passwordTextField release];
    
    
    
    UIButton *longinButton = [UIButton buttonWithType:UIButtonTypeSystem];
    longinButton.frame = CGRectMake(40, 250, 60, 40);
    [longinButton setTitle:@"登陆" forState:UIControlStateNormal];
    longinButton.titleLabel.font = [UIFont systemFontOfSize:25];
    //[longinButton addTarget:self action:@selector(Judgement) forControlEvents:UIControlEventTouchUpInside];
    [loginView addSubview:longinButton];
    
    
    UIButton *registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
    registerButton.frame = CGRectMake(275, 250, 60, 40);
    [registerButton setTitle:@"注册" forState:UIControlStateNormal];
    registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [loginView addSubview:registerButton];
    
    
    UIButton *seachButton = [UIButton buttonWithType:UIButtonTypeSystem];
    seachButton.frame = CGRectMake(135, 190, 200, 30);
    [seachButton setTitle:@"密码丢失请点击此处找回" forState:UIControlStateNormal];
    [seachButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //registerButton.titleLabel.font = [UIFont systemFontOfSize:25];
    [loginView addSubview:seachButton];
    
    
    // Do any additional setup after loading the view.
}


- (void)Judgement
{

    

    UITextField *namefile = (UITextField *)[_view viewWithTag:102];
    UITextField *passfile = (UITextField *)[_view viewWithTag:103];
    NSString *name = @"zhao@163.com";
    NSString *password = @"zhao123";
    if ([namefile.text isEqualToString:name] && [passfile.text isEqualToString:password]) {
        NSLog(@"登陆成功!");
    } else {
    
    
        NSLog(@"登陆失败");
    
    }


}


#pragma make - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    //NSLog(@"%s",__FUNCTION__);//打印当前的方法名
    return YES;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
