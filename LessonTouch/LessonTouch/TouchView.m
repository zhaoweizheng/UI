//
//  TouchView.m
//  LessonTouch
//
//  Created by lanouhn on 15/3/4.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "TouchView.h"

@implementation TouchView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{

    NSLog(@"touchesBegan");//触摸开始
    self.backgroundColor = [UIColor redColor];
    
    UITouch *touch = [touches anyObject];
    _startPoint = [touch locationInView:self];
    NSLog(@"point = %@",NSStringFromCGPoint(_startPoint));
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesMoved");//触摸移动
    self.backgroundColor = [UIColor blueColor];
    
    UITouch *touch = [touches anyObject];
    CGPoint currentPoint = [touch locationInView:self];
    CGFloat offSetX = currentPoint.x - _startPoint.x;
    CGFloat offSetY = currentPoint.y - _startPoint.y;
    
    CGPoint newCenter = self.center;
    newCenter.x = newCenter.x + offSetX;
    newCenter.y = newCenter.y + offSetY;
    
    self.center = newCenter;
    
    NSLog(@"currentPoint = %@",NSStringFromCGPoint(currentPoint));
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"touchesCancelled");//触摸取消
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    NSLog(@"touchesEnded");//触摸移动
    self.backgroundColor = [UIColor colorWithRed:(arc4random()%256)/255.0 green:(arc4random()%256)/255.0 blue:(arc4random()%256)/255.0 alpha:1.0];
}



@end
