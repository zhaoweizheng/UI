
//
//  RootViewController.m
//  LessonGesture
//
//  Created by lanouhn on 15/3/16.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    UIView  *aView = [[UIView alloc] initWithFrame:CGRectMake(20, 100, 280, 280)];
    aView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:aView];
    [aView release];
    
    /*
     //轻拍手势
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewBackgroundColor:)];
    tapGesture.numberOfTapsRequired = 2;//numberOfTapsRequired需要轻拍几次(2)次才算触发事件
    tapGesture.numberOfTouchesRequired = 2;//numberOfTouchesRequired需要2个手指
    [aView addGestureRecognizer:tapGesture];// addGestureRecognizer//增加手势//和addSubview相似
    [tapGesture release];
    
    */
    
    
    /*
    //长按手势//默认0.5秒
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewBackgroundColor:)];
   
    longPress.minimumPressDuration = 1;//minimumPressDuration更改长按手势时间长短//最小按的时间
    [aView addGestureRecognizer:longPress];
    [longPress release];
    */
    
    
    /*
    //轻扫手势
    UISwipeGestureRecognizer *swipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(changeViewBackgroundColor:)];
    swipeGesture.direction = UISwipeGestureRecognizerDirectionUp;//direction手势方向UISwipeGestureRecognizerDirectionUp//Up向上//Down向下//Left向左//Right向右
   
    
    [aView addGestureRecognizer:swipeGesture];
    [swipeGesture release];
    */
    
    /*
    //拖动手势
    UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(panAction:)];
    [aView addGestureRecognizer:panGesture];
    [panGesture release];
    
    */
    
    /*
   //捏合手势
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(pinchAction:)];
    [aView addGestureRecognizer:pinchGesture];
    [pinchGesture release];
    
    */
    
    //旋转手势
    UIRotationGestureRecognizer *rotationGesture = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotationAction:)];
    
    [aView addGestureRecognizer:rotationGesture];
    [rotationGesture release];
    
    
    
    
    //***********************************************
    // Do any additional setup after loading the view.
}

//p轻拍
//- (void)changeViewBackgroundColor:(UITapGestureRecognizer *)tap
//{
//
//    UIView *aView = tap.view;
//    aView.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0  blue:arc4random()%256/255.0  alpha:1.0];
//    NSLog(@"tap");
//
//}

//长按
//- (void)changeViewBackgroundColor:(UILongPressGestureRecognizer *)tap
//{
//    if (tap.state == UIGestureRecognizerStateBegan) {
//        UIView *aView = tap.view;
//        aView.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0  blue:arc4random()%256/255.0  alpha:1.0];
//        NSLog(@"tap");
//    }
//}

//轻扫
//- (void)changeViewBackgroundColor:(UISwipeGestureRecognizer *)tap
//{
//    UIView *aView = tap.view;
//    aView.backgroundColor = [UIColor colorWithRed:arc4random()%256/255.0 green:arc4random()%256/255.0  blue:arc4random()%256/255.0  alpha:1.0];
//    NSLog(@"tap");
//    
//}


//
//拖动手势
//- (void)panAction:(UIPanGestureRecognizer *)panGesture
//{
//
//    //基于你手指起始点的偏移量
//    CGPoint offsetPoint = [panGesture translationInView:panGesture.view];
//    NSLog(@"offset point = %@", NSStringFromCGPoint(offsetPoint));
//    //更改view的transform
//    panGesture.view.transform = CGAffineTransformMakeTranslation(offsetPoint.x, offsetPoint.y);
//}


//缩放
//- (void)pinchAction:(UIPinchGestureRecognizer *) pinch
//{
//
//    NSLog(@"scale = %f", pinch.scale);//scale缩放比例
//    //让view缩放
//    pinch.view.transform = CGAffineTransformMakeScale(pinch.scale, pinch.scale);
//}



- (void)rotationAction:(UIRotationGestureRecognizer *)rotation
{

    NSLog(@"rotation = %f", rotation.rotation);
    //让view旋转
    rotation.view.transform = CGAffineTransformMakeRotation(rotation.rotation);

}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
