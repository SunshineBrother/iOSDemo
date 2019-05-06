//
//  ViewController.m
//  子线程刷新UI
//
//  Created by yunna on 2018/11/30.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
}
- (IBAction)button:(id)sender {
    NSLog(@"%@",[NSThread currentThread]);
}


@end
