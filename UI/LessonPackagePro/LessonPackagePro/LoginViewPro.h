//
//  LoginViewPro.h
//  LessonPackagePro
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RegisterView;
@class LTView;

@interface LoginViewPro : UIView {

    LTView *view;

}

@property (nonatomic, retain)LTView *userView, *passwodView;
@property (nonatomic, retain)UIButton *loginButton, *resgisterButton1, *forgetButton;

@end
