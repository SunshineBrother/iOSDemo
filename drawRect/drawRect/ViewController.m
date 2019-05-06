//
//  ViewController.m
//  drawRect
//
//  Created by yunna on 2019/4/28.
//  Copyright © 2019年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "test.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    test *t = [[test alloc]initWithFrame:self.view.frame];
    [self.view addSubview:t];
    
    
    
}





@end
