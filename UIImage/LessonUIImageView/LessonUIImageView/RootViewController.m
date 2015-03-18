//
//  RootViewController.m
//  LessonUIImageView
//
//  Created by lanouhn on 15/3/14.
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
    // Do any additional setup after loading the view.
    /*
     //单张图
     
     UIImage *aImage = [UIImage imageNamed:@"125.jpg"];
     //1.
     UIImageView *imageView = [[UIImageView alloc] initWithImage:aImage];
     //imageView.frame = CGRectMake(20, 20, 280, 280);//重新设置图片大小
     //2.
     //    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake( 20, 20, 300, 300)];
     //    imageView.image = aImage;
     
     
     */
    
    //多图gif
    
    NSMutableArray *imageArray = [NSMutableArray array];
    for (int i = 1; i < 7; i++) {
        //1.获取包的路径
        NSString *filrPath = [[NSBundle mainBundle] bundlePath];
        NSString *newFilePath = [filrPath stringByAppendingPathComponent:@"gif1"];
        NSString *imagePath = [newFilePath stringByAppendingPathComponent:[NSString stringWithFormat:@"%d.tiff" , i] ];
        
        UIImage *_image = [[UIImage alloc]initWithContentsOfFile:imagePath];
        [imageArray addObject:_image];
        [_image release];
    }
    
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 280, 280)];
//    imageView.animationImages = imageArray;
//    [self.view addSubview:imageView];
//    [imageView startAnimating];
    //创建ImageView
    UIImageView *_imageView = [[UIImageView alloc]initWithFrame:CGRectMake(50, 50, 220, 220)];
    //给imageView设置播放图片的数组
    //animationImage属性是一个数组类型的，允许我们给ImageView添加一组图片
    _imageView.animationImages = imageArray;
    //设置动画的时长为2 s
    _imageView.animationDuration = 2.0;
    //设置动画的时长为2 s
    _imageView.animationRepeatCount = 0;
    //给imageView发送开始执行动画的消息
    [_imageView startAnimating];
    //给imageView发送结束动画的消息
    ////    [_imageView stopAnimating];
    [self.view addSubview:_imageView];
    [_imageView release];


    
    //开始播放动画
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
