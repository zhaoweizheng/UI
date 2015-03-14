//
//  AppDelegate.m
//  LessonBaseControl
//
//  Created by lanouhn on 15/3/2.
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
    
    
    
    
    UILabel *aLable = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 200, 70)];
    aLable.backgroundColor = [UIColor yellowColor];
    aLable.text = @"lanou大法师法师打发的撒根深蒂固gfsdghdhfdshdf";
    aLable.textAlignment = NSTextAlignmentCenter;//默认是左对齐,NSTextAlignmentCenter中间对齐,NSTextAlignmentRight右对齐
    
    aLable.textColor = [UIColor redColor];//textColor改变字体颜色
    aLable.numberOfLines = 0;
    aLable.lineBreakMode = NSLineBreakByWordWrapping;//换行
    aLable.font = [UIFont systemFontOfSize:12.0];//font改变字体的大小
    
    
    //UITextField:用于接收用户输入(少量文字)的UI控件//局限性:不能换行,接收少量文字
    
    UITextField *aTextField = [[UITextField alloc] initWithFrame:CGRectMake(20, 150, 200, 30)];
  // aTextField.backgroundColor = [UIColor grayColor];//背景颜色
   aTextField.borderStyle = UITextBorderStyleRoundedRect;//文本框是圆角的
    //aTextField.borderStyle = UITextBorderStyleLine;//带边框的
    
    aTextField.keyboardType = UIKeyboardTypeNumbersAndPunctuation;//键盘直接出来数字模式键盘
    aTextField.secureTextEntry = YES;//输入的内容变为隐藏,(如:输入密码)
    
    aTextField.delegate = self;//代理方法,让键盘回收
   // aTextField.text = @"hahh";//可以初始化就带字
    aTextField.placeholder = @"请输入搜索词";//palceholder可以初始化就带字(阴影字体),占位,
    [self.window addSubview:aTextField];
    [self.window addSubview:aLable];
    
    
    
    UIButton *aButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    aButton.frame = CGRectMake(20, 200, 100, 30);
     [aButton setTitle:@"nomal" forState:UIControlStateNormal];//显示字体
    [aButton setTitle:@"highlited" forState:UIControlStateHighlighted];//高亮时显示字体
    
    aButton.layer.borderColor = [[UIColor blueColor] CGColor];//给按钮添加蓝色边框
    aButton.layer.borderWidth = 1.0f;//边框宽度
    aButton.layer.cornerRadius = 10.0f;//给按钮设置弧度,
    //aButton.backgroundColor = [UIColor redColor];//按钮颜色
    aButton.layer.masksToBounds = YES;//使用圆角
   
    [aButton addTarget:self action:@selector(doClick:) forControlEvents:UIControlEventTouchUpInside];//响应事件
    [self.window addSubview:aButton];
  
    return YES;
}

- (void)doClick:(UIButton *)button
{

    NSLog(@"do click + %@", button);
    NSString *title = [button titleForState:UIControlStateNormal];
    NSLog(@"title = %@", title);//打印按钮上的字
}
//此方法是为了键盘回收
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
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
