//
//  RootViewController.m
//  LessonApplication
//
//  Created by lanouhn on 15/3/4.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController


//指定初始化方法
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    }
    return self;
}

//加载跟视图
//- (void)loadView
//{
//
//    self.view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
//    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
//
//}

//跟视图已经加载
- (void)viewDidLoad
{
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *aView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    aView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:aView];
    
    UILabel *aLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 40, 100, 100)];
    aLabel.text = @"HelloWord";
    [self.view addSubview:aLabel];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    NSLog(@"%s,%d",__FUNCTION__,__LINE__);
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
