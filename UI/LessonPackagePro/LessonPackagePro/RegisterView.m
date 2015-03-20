//
//  registerView.m
//  LessonPackagePro
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "registerView.h"
#import "LTView.h"


#define kMARGIN 10
@implementation RegisterView


-(id)initWithFrame:(CGRect)frame
{

    self = [super initWithFrame:frame];
    if (self) {
        self.frame = [[UIScreen mainScreen] bounds];//获取屏幕大小
        NSArray *nameArray = @[@"用户名", @"密码", @"确认密码", @"手机号", @"邮箱", @"住址"];
        for (NSInteger i = 0; i < 5; i++) {
            self.registreView = [[LTView alloc] initWithFrame:CGRectMake(0, 50 + 60 * i, self.frame.size.height / 2 - kMARGIN, 40)];
            _registreView.label.text = nameArray[i];
            _registreView.textField.placeholder = [NSString stringWithFormat:@"请输入%@",nameArray[i]];
            
            [self addSubview:_registreView];
            [_registreView release];
        }
    }

    //注册按钮
    _registreButton = [UIButton buttonWithType:UIButtonTypeSystem];
    _registreButton.frame = CGRectMake(50, 400, 100, 40);
    _registreButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    _registreButton.titleLabel.font = [UIFont systemFontOfSize:25];
    _registreButton.layer.cornerRadius = 10;
    [_registreButton setTitle:@"注册" forState:UIControlStateNormal];
    [self addSubview:_registreButton];
    
    //取消按钮
    _cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
     _cancelButton.frame = CGRectMake(225, 400, 100, 40);
     _cancelButton.backgroundColor =[UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
    [ _cancelButton setTitle:@"取消" forState:UIControlStateNormal];
     _cancelButton.titleLabel.font = [UIFont systemFontOfSize:25];
     _cancelButton.layer.cornerRadius = 10;
    [self addSubview: _cancelButton];


    return self;
}



-(void)dealloc
{
    [_registreView release];
    [_registreButton release];
    [super dealloc];
}

@end
