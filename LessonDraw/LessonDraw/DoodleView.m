//
//  DoodleView.m
//  LessonDraw
//
//  Created by lanouhn on 15/3/14.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "DoodleView.h"

@implementation DoodleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.lineArray = [NSMutableArray arrayWithCapacity:1];
        
        
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        button.frame = CGRectMake((frame.size.width - 100)/2, frame.size.height - 50, 100, 30);
        [button setTitle:@"undo" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor redColor];
        [button addTarget:self action:@selector(undo:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:button];
        
        
        
        
    }
    return self;
}

- (void)undo:(UIButton *)button
{


    [_lineArray removeLastObject];
    // 重绘
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //得到上下文, 1.在drawRect拿到上下午, 2.通过一个image图片拿到上下文
    CGContextRef context = UIGraphicsGetCurrentContext();//配置信息
    //设置了画笔的颜色
    CGContextSetFillColorWithColor(context, [UIColor redColor].CGColor);
    //设置画笔的粗细
    CGContextSetLineWidth(context, 2.0);
    
    for (int i = 0; i < [_lineArray count]; i++) {
        NSMutableArray *pointArray = [_lineArray objectAtIndex:i];
        for (int j = 0; j < (NSInteger)pointArray.count - 1; j++) {
            NSValue *firstPointValue = [pointArray objectAtIndex:j];
            NSValue *secondPointValue = [pointArray objectAtIndex:j+1];
            
            CGPoint firstPoint = [firstPointValue CGPointValue];
            CGPoint secondPoint = [secondPointValue CGPointValue];
            //把笔触移动一个点
            CGContextMoveToPoint(context, firstPoint.x, firstPoint.y);
            //笔触和另一个点要成一个路径
            CGContextAddLineToPoint(context, secondPoint.x, secondPoint.y);
            
            
        }
    }
    
    //绘制
    CGContextStrokePath(context);
    
}




- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    NSMutableArray *pointArray = [NSMutableArray arrayWithCapacity:1];
    [_lineArray addObject:pointArray];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {

    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    NSLog(@"point = %@", NSStringFromCGPoint(point));
    
    NSMutableArray *pointArray = [_lineArray lastObject];
    NSValue *pointValue = [NSValue valueWithCGPoint:point];
    [pointArray addObject:pointValue];
    
    
    //重绘界面
    [self setNeedsDisplay];
    
    

}

- (void)dealloc
{
    [_lineArray release];
    [super dealloc];
}

@end
