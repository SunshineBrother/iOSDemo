//
//  ViewController.m
//  自动释放池2
//
//  Created by yunna on 2018/11/20.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Person *p = [[Person alloc]init];
    NSLog(@"%s",__func__);
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    NSLog(@"%@",runLoop);
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s", __func__);
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s", __func__);
}







@end
