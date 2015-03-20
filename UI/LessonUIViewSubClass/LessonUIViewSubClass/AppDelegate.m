//
//  AppDelegate.m
//  LessonUIViewSubClass
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

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
    self.window.backgroundColor = [UIColor yellowColor];
    [self.window makeKeyAndVisible];
    
    
    
//    UILabel,标签视图,主要用于显示文字
    //UILabel继承于UIView
    
    //1.创建(开辟内存初始化)
    UILabel *userlabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 50)];
    //2.设置属性
    userlabel.backgroundColor = [UIColor redColor];
    //设置文本
    userlabel.text = @"登陆˚";//也可以用set方法[userlabel setText:<#(NSString *)#>]
    //设置字体样式
    //系统字体
    //userlabel.font = [UIFont systemFontOfSize:40];
    //系统字体加粗
    userlabel.font = [UIFont boldSystemFontOfSize:40];//
    //自定义文字样式
    //userlabel.font =[UIFont fontWithName:@"" size:60];
    //设置文本颜色
    userlabel.textColor = [UIColor whiteColor];
    //设置行数,默认是1, o代表无限行
    userlabel.numberOfLines = 0;
    //设置文字对齐方式
    userlabel.textAlignment = NSTextAlignmentCenter;
    //设置文字阴影
//    userlabel.shadowColor = [UIColor grayColor];
//    //设置阴影的偏移,宽度影响左右,高度影响上下
//    userlabel.shadowOffset = CGSizeMake(10, 10);
   //文本大小适应lable宽度
    userlabel.adjustsFontSizeToFitWidth = YES;
    //字体大小, 缩放比率
    userlabel.minimumScaleFactor = 0.5;
    
    
    
    
    //UITextField,文本输入框,用于输入和显示文字
    //1.创建
    UITextField *userTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 80, 335, 40)];
    //2.设置属性
    userTextField.backgroundColor = [UIColor whiteColor];
    //设置输入框的文本
   // userTextField.text = @"请输入减肥SD卡雷锋精神";
    //设置占位符
    userTextField.placeholder = @"请输入";
    //设置文本颜色
    userTextField.textColor = [UIColor greenColor];
    //设置文本样式
    userTextField.font = [UIFont systemFontOfSize:40];
    //设置对齐方式
    userTextField.textAlignment = NSTextAlignmentLeft;
    //设置输入框样式
    //userTextField.borderStyle = UITextBorderStyleRoundedRect;
    //设置输入框背景图
    //userTextField.background = [UIImage imageNamed:@"1234.png"];
    //是否允许用户输入
    userTextField.enabled = YES;//NO为不允许输入
   //开始编译文本时,清空内容
   // userTextField.clearsOnBeginEditing = YES;//清空一遍内容(多用于密码输入)
    
    //清空按钮
    //userTextField.clearButtonMode = UITextFieldViewModeAlways;//出来就有
    userTextField.clearButtonMode = UITextFieldViewModeWhileEditing;
    
    //设置输入安全
    userTextField.secureTextEntry = YES;
    
    //设置弹出键盘样式
    userTextField.keyboardType = UIKeyboardTypeDefault;//默认键盘UIKeyboardTypeDefault//数字键盘UIKeyboardTypeNumberPad;
    //设置return按钮样式
    userTextField.returnKeyType = UIReturnKeyDone;
    //设置代理
    userTextField.delegate = self;
    //自定义键盘
    UIView *keyboardView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.window.frame.size.width, 300)];
    keyboardView.backgroundColor = [UIColor grayColor];
    userTextField.inputView = keyboardView;//inputView
    [keyboardView release];
    
    //设置leftView
    UIView *leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    leftView.backgroundColor = [UIColor redColor];
    userTextField.leftView = leftView;
    [leftView release];
    //设置leftView显示模式
    userTextField.leftViewMode = UITextFieldViewModeAlways;
    
    
    
    
    
    
    //3.添加到父视图
    [self.window addSubview:userTextField];
    //4.释放
    [userTextField release];
    //cmd+K 弹出键盘 cmd + S 截图 cmd + 左右  旋转

    
    
    //建一个view
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    centerView.center = self.window.center;
    centerView.backgroundColor = [UIColor greenColor];
    
    
    //设置边框宽度
    centerView.layer.borderWidth = 5;
    //设置边框颜色
    centerView.layer.borderColor = [UIColor redColor].CGColor;
    //设置边框弧度
    centerView.layer.cornerRadius = 10;
    //设置阴影颜色
    centerView.layer.shadowColor = [UIColor blueColor].CGColor;
    //设置阴影偏移
    centerView.layer.shadowOffset = CGSizeMake(10, 10);
    //设置阴影不透明度
    centerView.layer.shadowOpacity = 1.0;
    //设置超出编辑部分是否显示
   // centerView.clipsToBounds = YES;
    [self.window addSubview:centerView];
    [centerView release];
    
    
//    UIView *subView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
//    centerView.backgroundColor = [UIColor grayColor];
//    [centerView addSubview:subView];
//    [subView release];
    
    
    
    
    
    
    
    
    //3.添加父视图
    [self.window addSubview:userlabel];
    //4.释放
    [userlabel release];
    
    
    
    
    
    
    
    
    
//    UIButton,按钮类,用于响应和处理一些事件
    
    //1.创建
    UIButton *button = [UIButton  buttonWithType:UIButtonTypeCustom];//系统自带UIButtonTypeSystem//UIButtonTypeCustom自定义的
    //2.设置属性
    
    button.frame = CGRectMake(20, 140, 335, 40);
    button.backgroundColor = [UIColor whiteColor];
    //设置文字 和控件状态
    [button setTitle:@"点我" forState:UIControlStateNormal];//正常状态
    [button setTitle:@"不要" forState:UIControlStateHighlighted];//高亮状态
    [button setTitle:@"" forState:UIControlStateSelected];//选中状态
    //设置按钮是否选中
    //button.selected = YES;
    [button setTitle:@"kkkk" forState:UIControlStateDisabled];//不可用状态
    //设置按钮是否可用
    //button.enabled = NO;
    //设置字体大小
    button.titleLabel.font = [UIFont systemFontOfSize:35];
    //设置字体颜色
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置图片
    //[button setImage:[UIImage imageNamed:@"456.png"] forState:UIControlStateNormal];
    //设置背景图片
    [button setBackgroundImage:[UIImage imageNamed:@"456.png"] forState:UIControlStateNormal];
    
  //  /
    //管理事件(方法)
    //参数1:目标,谁来调用
    //参数2:事件,管理的方法名
    //参数3:触发事件
    [button addTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];//UIControlEventTouchUpInside//常用
    
    //NSIntegerMax
    //CGFLOAT_MAX
    //移除事件//根据事件的类型进行移除
    //[button removeTarget:self action:@selector(pressButton) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    //3.添加到父视图
    [self.window addSubview:button];
    //4.千万不用释放
    
//    //UIAlertView,警告框
//    //创建
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你有100到账" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
//    //2.显示
//    [alertView show];
//    //3释放
//    [alertView release];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}



- (void)pressButton
{

    //UIAlertView,警告框
    //创建
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你有100到账" delegate:nil cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    //2.显示
    [alertView show];
    //3释放
    [alertView release];
    

}


#pragma make - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {

    [textField resignFirstResponder];

    NSLog(@"%s",__FUNCTION__);//打印当前的方法名
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
