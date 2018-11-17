//
//  ViewController.m
//  NSException
//
//  Created by yunna on 2018/11/12.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
//    NSMutableArray *arr = [NSMutableArray arrayWithObject:@[@"1"]];
//    NSLog(@"%@",arr[2]);
//
//    NSLog(@"%s",__func__);
    
    NSError *error = [NSError errorWithDomain:NSURLErrorDomain code:121 userInfo:@{NSLocalizedDescriptionKey:@"本地化的错误描述"}];
    NSLog(@"error.localizedDescription:%@\nerror.code:%ld", error.localizedDescription,error.code);
    
   
    
    
    
}




@end










































