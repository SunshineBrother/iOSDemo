//
//  TestViewController.m
//  UIViewController的生命周期
//
//  Created by yunna on 2019/4/4.
//  Copyright © 2019年 yunna. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%s",__func__);
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    NSLog(@"%s",__func__);
}

@end
