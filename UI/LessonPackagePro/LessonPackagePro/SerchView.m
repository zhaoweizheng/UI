
//
//  SerchView.m
//  LessonPackagePro
//
//  Created by lanouhn on 15/3/19.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "SerchView.h"
#import "LTView.h"
@implementation SerchView


- (id)initWithFrame:(CGRect)frame
{

    self = [super initWithFrame:frame];
    if (self) {
        self.frame = [[UIScreen mainScreen] bounds];
        self.view = [[LTView alloc] initWithFrame:CGRectMake(0, 40, self.frame.size.width, 40)];
        _view.label.text = @"邮箱:";
        _view.textField.placeholder = @"请输入邮箱";
        [self addSubview:_view];
        [_view release];
        //登陆按钮
        _serchButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _serchButton.frame = CGRectMake(20, 200, 100, 40);
        _serchButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _serchButton.titleLabel.font =[UIFont systemFontOfSize:25];
        NSLog(@"zhao");
        [_serchButton setTitle:@"找回" forState:UIControlStateNormal];
        _serchButton.layer.cornerRadius = 10;
        //[_serchButton addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:_serchButton];
        
        //注册按钮
        _cancelButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _cancelButton.frame = CGRectMake(250, 200, 100, 40);
        _cancelButton.backgroundColor = [UIColor colorWithRed:0.049 green:1.000 blue:0.123 alpha:1.000];
        _cancelButton.titleLabel.font = [UIFont systemFontOfSize:25];
        _cancelButton.layer.cornerRadius = 10;
        [_cancelButton setTitle:@"取消" forState:UIControlStateNormal];
        [self addSubview:_cancelButton];

        
        
    }

    return self;
}







-(void)dealloc
{
    [_view release];
    [_serchButton release];
    [_cancelButton release];
    [super dealloc];
}

@end
