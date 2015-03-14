//
//  main.m
//  LessonApplication
//
//  Created by lanouhn on 15/3/3.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AppDelegate.h"

int main(int argc, char * argv[])
{
    @autoreleasepool {
        //1.创建了UIApplication对象
        //2.指定了一个UIApplication的代理委托
        //3.UIApplication开启一个事件循环
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
