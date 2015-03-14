//
//  AppDelegate.h
//  LessonBaseControl
//
//  Created by lanouhn on 15/3/2.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

//@interface AppDelegate : UIResponder <UIApplicationDelegate>
@interface AppDelegate : UIResponder <UIApplicationDelegate,UITextFieldDelegate>//接受协议
@property (strong, nonatomic) UIWindow *window;

@end
