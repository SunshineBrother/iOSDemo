//
//  ViewController.m
//  Crash
//
//  Created by yunna on 2018/10/19.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#include <mach/task.h>
#include <mach/mach_init.h>
#include <mach/mach_port.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *arr = @[@"1",@"2"];
    NSLog(@"%@",arr[3]);
    
}









@end
































