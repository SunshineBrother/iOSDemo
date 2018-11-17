//
//  ViewController.m
//  Tagged Pointer
//
//  Created by yunna on 2018/11/14.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    for (int i = 0; i < 11; i++) {
        NSNumber *num = [NSNumber numberWithInt:i];
        // 打印出地址
        NSLog(@"%d-->%p", i,num);
    }
}









@end
