//
//  dispatch_semaphoreDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "dispatch_semaphoreDemo.h"
@interface dispatch_semaphoreDemo()
@property (strong, nonatomic) dispatch_semaphore_t semaphore;
@end
@implementation dispatch_semaphoreDemo
- (instancetype)init
{
    if (self = [super init]) {
        self.semaphore = dispatch_semaphore_create(1);
    }
    return self;
}



- (void)otherTest
{
    for (int i = 0; i < 20; i++) {
        [[[NSThread alloc] initWithTarget:self selector:@selector(test) object:nil] start];
    }
}

- (void)test
{
    // 如果信号量的值 > 0，就让信号量的值减1，然后继续往下执行代码
    // 如果信号量的值 <= 0，就会休眠等待，直到信号量的值变成>0，就让信号量的值减1，然后继续往下执行代码
    dispatch_semaphore_wait(self.semaphore, DISPATCH_TIME_FOREVER);
    
    sleep(2);
    NSLog(@"test - %@", [NSThread currentThread]);
    
    // 让信号量的值+1
    dispatch_semaphore_signal(self.semaphore);
}
@end
