//
//  ViewController.m
//  NSThread
//
//  Created by yunna on 2018/11/3.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"[NSThread currentThread]:%@",[NSThread currentThread]);

    
}




- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSThread *thread = [[NSThread alloc] initWithBlock:^{
        NSLog(@"1");
//
//        [[NSRunLoop currentRunLoop] addPort:[[NSPort alloc] init] forMode:NSDefaultRunLoopMode];
//        [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
    }];
    NSLog(@"thread start");
    [thread start];
    NSLog(@"performSelector");
    [self performSelector:@selector(test) onThread:thread withObject:nil waitUntilDone:YES];
    NSLog(@"end");
}


- (void)test{
    NSLog(@"[NSThread currentThread]:%@",[NSThread currentThread]);
    NSLog(@"2");
}

- (void)createThread{
    
    for (int i = 0; i < 5; i++) {
        NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(firstThread:) object:@"Hello, World"];
        //设置线程的名字，方便查看
        [thread setName:@"firstThread"];
        //启动线程
        [thread start];
    }
    
}

//线程的任务执行体并接收一个参数arg
- (void)firstThread:(id)arg
{
    NSLog(@"Task %@ %@", [NSThread currentThread], arg);

}












@end
























