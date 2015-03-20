//
//  LTView.m
//  LessonTag
//
//  Created by lanouhn on 15/3/17.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "LTView.h"

@implementation LTView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(id)initWithFrame:(CGRect)frame
{

    //self = [super initWithFrame:frame]
    self = [super initWithFrame:frame];
    if (self) {
        // 创建姓名label
        self.nameLable = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, 100, self.frame.size.height - 10)];
        //设置属性
        self.nameLable.text = @"创建";
        self.nameLable.backgroundColor = [UIColor whiteColor];
        
        //添加到父视图
        [self addSubview:self.nameLable];
        [_nameLable release];
        //创建UITextfield
        self.textField = [[UITextField alloc] initWithFrame:CGRectMake(130, 20, 200, self.frame.size.height - 10)];
        //设置相关属性
        self.textField.borderStyle = UITextBorderStyleRoundedRect;//文本框是圆角的
        self.textField.placeholder = @"请输入姓名:";
        self.textField.keyboardType = UIKeyboardTypeDefault;
        self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
        self.textField.delegate = self;
        //self.textField.backgroundColor = [UIColor blackColor];
        [self addSubview: self.textField];
        [_textField release];
    }
    return self;

}

-(void)dealloc
{

    [_nameLable release];
    [_textField release];
    [super dealloc];

}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    //NSLog(@"%s",__FUNCTION__);//打印当前的方法名
    return YES;
    
}



@end
