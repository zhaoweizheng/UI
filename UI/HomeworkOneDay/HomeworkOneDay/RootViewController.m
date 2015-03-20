//
//  RootViewController.m
//  HomeworkOneDay
//
//  Created by lanouhn on 15/3/16.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //view = containerView
    UIView *containerView = [[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    containerView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:containerView];
    [containerView release];
    
    // UILable and UItextField
    [self unLableX:587 Y:592 Name:@"用户名 :" ShadowName:@"请输入用户名"];
    [self unLableX:527 Y:530 Name:@"密    码 :" ShadowName:@"请输入密码"];
    [self unLableX:467 Y:470 Name:@"确认密码 :" ShadowName:@"请再次输入密码"];
    [self unLableX:407 Y:412 Name:@"手机号 :" ShadowName:@"请输入手机号"];
    //[self ]
    [self unLableX:350 Y:355 Name:@"邮    箱:" ShadowName:@"请输入邮箱"];
    //UIButton
    [self unButtonX:320 Y:300 Name:@"登陆" HightName:@"000"];
    [self unButtonX:135 Y:300 Name:@"注册" HightName:@"000"];
    
    // Do any additional setup after loading the view.
}

//通用的UILable and UItextField方法
- (void)unLableX:(NSInteger)aX Y:(NSInteger)aY Name:(NSString *)aName ShadowName:(NSString *)aShadowName
{

    //通用的lable方法
    UILabel *unLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, self.view.frame.size.height - aX, 100, 20)];
    unLabel.text = aName;
    unLabel.font = [UIFont systemFontOfSize:20.0];
    [self.view addSubview:unLabel];
    [unLabel release];
    
    //通用的textFiled方法
    UITextField *unTextField = [[UITextField alloc] initWithFrame:CGRectMake(135, self.view.frame.size.height - aY, 200, 30)];
    unTextField.tag = 100;
    unTextField.borderStyle = UITextBorderStyleRoundedRect;//文本框是圆角的
    unTextField.delegate = self;
    //unTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;//键盘直接出来数字模式键盘
    unTextField.placeholder =aShadowName ;//palceholder可以初始化就带字(阴影字体),占位,
    [self.view addSubview:unTextField];
    [unTextField release];

    
}



//通用的button方法
- (void)unButtonX:(NSInteger)aX Y:(NSInteger)aY Name:(NSString *)aName HightName:(NSString *)aHightName
{

    UIButton *unButton = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - aX, self.view.frame.size.height - aY, 80, 35)];
    [unButton setTitle:aName forState:UIControlStateNormal];//显示字体
    [unButton setTitle:aHightName forState:UIControlStateHighlighted];//高亮时显示字体
    [unButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];//给button上的字体设置颜色,初始化是白色的,如果底色也是白色会看不见
    unButton.backgroundColor = [UIColor whiteColor];
    unButton.layer.borderColor = [[UIColor blueColor] CGColor];//给按钮添加蓝色边
    unButton.layer.borderWidth = 1.0f;//边框宽度
    unButton.layer.cornerRadius = 10.0f;////给按钮设置弧度,
    unButton.layer.masksToBounds = YES;//使用圆角
    [self.view addSubview:unButton];
    [unButton release];


}


//此方法是为了键盘回收
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
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
