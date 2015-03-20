//
//  LTView.h
//  LessonTag
//
//  Created by lanouhn on 15/3/17.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LTView : UIView<UITextFieldDelegate>
@property (nonatomic, retain)UILabel *nameLable;//姓名lable
@property (nonatomic, retain)UITextField *textField;//输入框

//初始化方法
-(id)initWithFrame:(CGRect)frame;


@end
