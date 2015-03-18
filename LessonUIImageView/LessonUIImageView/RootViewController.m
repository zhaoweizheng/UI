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
     
     UIImage *aImage = [UIImage imageNamed:@"123.PNG"];
     //1.
     UIImageView *imageView = [[UIImageView alloc] initWithImage:aImage];
     //imageView.frame = CGRectMake(20, 20, 280, 280);//重新设置图片大小
     //2.
     //    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake( 20, 20, 300, 300)];
     //    imageView.image = aImage;
          [self.view addSubview:imageView];
          [imageView release];
    
    */
    //多图gif
    
    NSMutableArray *imageArray = [NSMutableArray arrayWithCapacity:1];
    for (int i = 1; i < 7; i++) {
        NSString *fileName = [NSString stringWithFormat:@"%d.tiff", i];
        UIImage *aImage = [UIImage imageNamed:fileName];
        NSLog(@"%@" ,fileName);
        [imageArray addObject:aImage];
    }
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 20, 150, 150)];
    imageView.animationImages = imageArray;
    [self.view addSubview:imageView];
    
    //开始播放动画
    [imageView startAnimating];
    [imageView release];
//*******************************************************************
//   
    NSMutableArray * imageArray2 = [NSMutableArray arrayWithCapacity:1];
    for (int j = 1; j < 11; j++) {
        NSString *fileName2 = [NSString stringWithFormat:@"a_%d.tiff", j];
        UIImage *aImage2 = [UIImage imageNamed:fileName2];
        NSLog(@"%@" ,fileName2);
        [imageArray2 addObject:aImage2];
    }
    
     _imageView2 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 160, 250, 250)];
    _imageView2.animationImages = imageArray2;//animationImage属性是一个数组类型的，允许我们给ImageView添加一组图片   imageArray2.
    _imageView2.animationDuration = 0.0;//设置动画的时长为0 s//播放时长
    _imageView2.animationRepeatCount = 0;//设置动画的时长为2 s
    
    [self.view addSubview:_imageView2];//给imageView发送结束动画的消息
    
    //开始播放动画
    [_imageView2 startAnimating];
    [_imageView2 release];
    
    
    UISlider *slider = [[UISlider alloc] initWithFrame:CGRectMake(20, 450, 250, 34)];
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    slider.minimumTrackTintColor = [UIColor redColor];
    slider.maximumTrackTintColor = [UIColor greenColor];
//    slider.minimumValueImage = [UIImage imageNamed:@"redBar.jpg"];
//    slider.maximumValueImage = [UIImage imageNamed:@"yellowBar.jpg"];
    slider.minimumValue = 0;
    slider.maximumValue = 3;
    [self.view addSubview:slider];
    [slider release];
   
}

- (void)changeValue:(UISlider *)slider
{

    //更改动画时长
    _imageView2.animationDuration = slider.value;
    //更改动画时长时会停止播放,需要重新播放
    [_imageView2 startAnimating];
    

    

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
