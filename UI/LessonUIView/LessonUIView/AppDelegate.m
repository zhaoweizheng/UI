//
//  AppDelegate.m
//  LessonUIView
//
//  Created by lanouhn on 15/3/16.
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
    
    
    //UIWindow:UI中得窗口类,用于显示界面,一般一个应用至少要有一个window
    //IOS中得空间都是矩形, 决定一个控件位置及大小,用结构体CGRect
    
    //CGPoint, 结构体,用来存储x,y轴坐标
    CGPoint point = CGPointMake(10, 20);
  NSLog(@"%.2lf", point.x);
    NSLog(@"%.2lf", point.y);
    NSLog(@"bbb%@", NSStringFromCGPoint(point));
    //CGSize, 结构体,用于存储宽度和高度
    
    CGSize size = CGSizeMake(200, 300);
    NSLog(@"%.2lf", size.width);
    NSLog(@"%.2lf", size.height);
    NSLog(@"bbb%@", NSStringFromCGSize(size));


    
    //CGRect, 结构体,用于存储矩形的位置和大小
    CGRect rect = CGRectMake(10, 20, 200, 300);
    NSLog(@"%.2lf", rect.origin.x);
    NSLog(@"%.2lf", rect.origin.y);
    NSLog(@"%.2lf", rect.size.height);
    NSLog(@"%.2lf", rect.size.width);
    NSLog(@"bbb%@", NSStringFromCGRect(rect));

    //[UIScreen mainScreen], 获取当前手机屏幕
    //[[UIScreen mainScreen] bounds], 获取当前手机屏幕大小
    NSLog(@"%@", NSStringFromCGRect([[UIScreen mainScreen] bounds]));
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds] ] autorelease];
       //设置窗口背景色
    self.window.backgroundColor = [UIColor yellowColor];
    
    //设置为主窗口,并显示
    [self.window makeKeyAndVisible];
    
    /*
    //UIView:UI中得视图类,在应用中显示的全部都是UIView或者UIView的子类
    
    //创建一个UIView
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(30, 40, 50, 100)];
    view.backgroundColor = [UIColor redColor];
    //添加视图(添加到子视图数组中)
    [self.window addSubview: view];
    [view release];
    
    
    //一个视图,只能有一个父视图
    //父视图
    NSLog(@"%@", view.superview);
    //一个视图,可以有多个子视图
    NSLog(@"%@", view.subviews);
    
    
    //添加一个视图的步骤
    //1.创建视图
    //2.设置视图属性(背景颜色)
    //3.添加的俯视图
    //4.释放内存是
    
    //获取视图的位置和大小
    NSLog(@"%@", NSStringFromCGRect(self.window.frame));
    UIView *viewRightDown = [[UIView alloc] initWithFrame:CGRectMake(30, self.window.frame.size.height - 40 - 100, 50, 100)];
    viewRightDown.backgroundColor = [UIColor redColor];
    [self.window addSubview:viewRightDown];
    [viewRightDown release];
    
    
    UIView *viewRightDown1 = [[UIView alloc] initWithFrame:CGRectMake(self.window.frame.size.width - 30 - 50, 40, 50, 100)];
    viewRightDown1.backgroundColor = [UIColor redColor];
    [self.window addSubview:viewRightDown1];
    [viewRightDown1 release];
    
//    UIView *viewRightDown2 = [[UIView alloc] initWithFrame:CGRectMake(290, 527, 50, 100)];
//    viewRightDown2.backgroundColor = [UIColor redColor];
//    [self.window addSubview:viewRightDown2];
//    [viewRightDown2 release];
//
    UIView *viewRightDown3 = [[UIView alloc] initWithFrame:CGRectMake(self.window.frame.size.width - 30 - 50, self.window.frame.size.height - 40 - 100, 50, 100)];
    viewRightDown3.backgroundColor = [UIColor redColor];
    [self.window addSubview:viewRightDown3];
    [viewRightDown3 release];
    
    
    //从父视图上移除视图
//    [viewRightDown removeFromSuperview];
//    [viewRightDown1 removeFromSuperview];
//    //[viewRightDown3 removeFromSuperview];
//    [viewRightDown3 removeFromSuperview];
//    NSLog(@"%@", self.window.subviews);
    //遍历数组删除
    for (UIView *aView in self.window.subviews) {
        [aView removeFromSuperview];
    }
    
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    aView.backgroundColor = [UIColor redColor];
    [self.window addSubview:aView];
    [aView release];
    
    UIView *aView1 = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 100, 100)];
    aView1.backgroundColor = [UIColor greenColor];
    [self.window addSubview:aView1];
    [aView1 release];
    
    UIView *aView2 = [[UIView alloc] initWithFrame:CGRectMake(80, 80, 100, 100)];
    aView2.backgroundColor = [UIColor blueColor];
    [self.window addSubview:aView2];
    [aView2 release];
    
    //红色视图居中
    [self.window bringSubviewToFront:aView];
    [self.window insertSubview:aView1 atIndex:2];
    [self.window insertSubview:aView1 aboveSubview:aView2];
    [self.window insertSubview:aView1 belowSubview:aView1];
    [aView1 release];
    
    //UIColor,颜色类
    //UIView不设置背景颜色,默认为clearColor
    
    //自定义颜色
//    UIColor *customColor = [UIColor colorWithRed:100/255 green:20/255 blue:30/255 alpha:0.5];
//    //alpha值从0~1, 越靠近0越透明
//    self.window.backgroundColor = customColor;
//    
    //创建一个随机颜色的视图
//    UIView *randomView = [[UIView alloc] initWithFrame:CGRectMake(200, 200, 100, 100)];
//    randomView.backgroundColor = [UIColor colorWithRed:(arc4random()%256)/255.0 green:(arc4random()%256)/255.0 blue:(arc4random()%256)/255.0 alpha:0.5];
//    [self.window addSubview:randomView];
//    [randomView release];
//    
    
    
    //移除子视图
    for (UIView *tempView in self.window.subviews) {
        [tempView removeFromSuperview];
    }
    
//    for (NSInteger i = 0; i < 10; i++) {
//        UIView *tempView = [[UIView alloc] initWithFrame:CGRectMake(50 + 20*i, 50 + 20*i, 100, 100)];
//        tempView.backgroundColor = [UIColor colorWithRed:(arc4random()%256)/255.0 green:(arc4random()%256)/255.0 blue:(arc4random()%256)/255.0 alpha:1.0];
//        
//        [self.window addSubview:tempView];
//        [tempView release];
//    }
//    
//    
    
    
   */
    
    
    
    
    
    
//    UIView的属性
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    //设置背景
    centerView.backgroundColor = [UIColor cyanColor];
    //设置是否隐藏
    centerView.hidden = NO;//hidden 默认NO(不隐藏),YES隐藏
    //设置不透明度(0-1.0)
    centerView.alpha = 0.5;
    //设置frame
    centerView.frame = CGRectMake(0, 100, 200, 200);
    
    //注:一个视图的frame只能够整体修改,不能修改其中的一个变量
    //可以重新定义一个结构体,把frame赋值给它,然后再修改,再重新赋给frame
    CGRect tempRect = centerView.frame;
    tempRect.size.height = 300;
    centerView.frame = tempRect;
    //frame的坐标系是?
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
    aView.backgroundColor = [UIColor redColor];
    [centerView addSubview:aView];
    [aView release];
    
    
    //设置中心点
    centerView.center = CGPointMake(self.window.frame.size.width/2.0, self.window.frame.size.height/2.0);
    centerView.center = self.window.center;
    //中心点坐标系是父视图的坐标系
    
    //设置bounds,是这个视图在自身坐标系的位置和大小,基于自身坐标系
    NSLog(@"%@", NSStringFromCGRect(centerView.bounds));
    centerView.bounds = CGRectMake(50, 0, 300, 300);
    
    
    [self.window addSubview:centerView];
    [centerView release];
    //frame, center, bounds 关系
    //1.frame修改,会影响center和bounds
    //2.center修改,center会影响frame
    //3.bounds修改,会影响frame和center
    
    
    
    
    
    
    
    
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
