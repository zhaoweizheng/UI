//
//  rootViewController.m
//  MicroBlog
//
//  Created by lanouhn on 15/3/18.
//  Copyright (c) 2015年 lanouhn. All rights reserved.
//

#import "rootViewController.h"

@interface rootViewController ()

@end

@implementation rootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIViewController *home = [[UIViewController alloc] init];
    home.view.backgroundColor = [UIColor redColor];
    [self addChildViewController:home];
    UIViewController *message = [[UIViewController alloc] init];
    message.view.backgroundColor = [UIColor greenColor];
    [self addChildViewController:message];
    UIViewController *discover = [[UIViewController alloc] init];
    discover.view.backgroundColor = [UIColor grayColor];
    [self addChildViewController:discover];
    UIViewController *me = [[UIViewController alloc] init];
    me.view.backgroundColor = [UIColor yellowColor];
    [self addChildViewController:me];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
