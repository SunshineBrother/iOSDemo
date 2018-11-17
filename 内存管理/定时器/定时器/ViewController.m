//
//  ViewController.m
//  定时器
//
//  Created by yunna on 2018/11/13.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "MyProxy.h"
@interface ViewController ()
@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) CADisplayLink *link;
@end

@implementation ViewController
 
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self testTimer3];
    
}




- (void)testTimer1{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(doTask) userInfo:nil repeats:YES];
}

- (void)testTimer2{
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(doTask) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
 
}
- (void)testTimer3{
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[MyProxy proxyWithTarget:self] selector:@selector(doTask) userInfo:nil repeats:YES];
}

- (void)testCADisplayLink{
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(doTask)];
    [self.link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}


- (void)doTask{
    NSLog(@"%s",__func__);
}

- (void)dealloc{
    NSLog(@"销毁定时器：%s",__func__);
    [self.timer invalidate];
    self.timer = nil;
}

@end
























