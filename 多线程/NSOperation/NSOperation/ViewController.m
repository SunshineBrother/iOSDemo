//
//  ViewController.m
//  NSOperation
//
//  Created by yunna on 2018/11/10.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "JHOperation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(Operation2) object:@"Hello, World"];
//    //设置线程的名字，方便查看
//    [thread setName:@"firstThread"];
//    //启动线程
//    [thread start];
    
    [self Operation7];
}

- (void)Operation1{
    //1、创建NSInvocationOperation对象
    NSInvocationOperation *op = [[NSInvocationOperation alloc]initWithTarget:self selector:@selector(test) object:nil];
    //2、开始调用
    [op start];
}


- (void)Operation2{
    //1、使用NSBlockOperation
    NSBlockOperation *op = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程:%@",[NSThread currentThread]);
    }];
    [op addExecutionBlock:^{
        for (int i = 0; i < 2; i++) {
            NSLog(@"当前线程2：%@", [NSThread currentThread]); // 打印当前线程
        }
    }];
    [op addExecutionBlock:^{
        for (int i = 0; i < 2; i++) {
            NSLog(@"当前线程3：%@", [NSThread currentThread]); // 打印当前线程
        }
    }];
    [op addExecutionBlock:^{
        for (int i = 0; i < 2; i++) {
            NSLog(@"当前线程4：%@", [NSThread currentThread]); // 打印当前线程
        }
    }];
   
   
    //2、开始调用
    [op start];
}


- (void)Operation3{
    // 1.创建 JHOperation 对象
    JHOperation *op = [[JHOperation alloc] init];
    // 2.调用 start 方法开始执行操作
    [op start];
}

- (void)Operation4{
    //1、创建队列
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    
    //2、创建操作
    NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程1:%@",[NSThread currentThread]);
    }];
    NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程2:%@",[NSThread currentThread]);
    }];
    NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程3:%@",[NSThread currentThread]);
    }];
    
    //3、添加操作
    [queue addOperation:op1];
    [queue addOperation:op2];
    [queue addOperation:op3];
}



- (void)Operation5{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    [queue addOperationWithBlock:^{
        NSLog(@"当前线程1:%@",[NSThread currentThread]);
    }];
    [queue addOperationWithBlock:^{
        NSLog(@"当前线程2:%@",[NSThread currentThread]);
    }];
    [queue addOperationWithBlock:^{
        NSLog(@"当前线程3:%@",[NSThread currentThread]);
    }];
}


- (void)Operation6{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    //2、创建操作
    NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
        [NSThread sleepForTimeInterval:1];
        NSLog(@"当前线程1:%@",[NSThread currentThread]);
    }];
    NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
        [NSThread sleepForTimeInterval:2];
        NSLog(@"当前线程2:%@",[NSThread currentThread]);
    }];
    NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程3:%@",[NSThread currentThread]);
    }];


    //3、添加依赖
    [op3 addDependency:op1];
    [op3 addDependency:op2];
    //4、添加操作
    [queue addOperation:op1];
    [queue addOperation:op2];
    [queue addOperation:op3];

}

- (void)Operation7{
    NSOperationQueue *queue = [[NSOperationQueue alloc]init];
    //2、创建操作
    NSBlockOperation *op1 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程1:%@",[NSThread currentThread]);
    }];
   
    
    
    
    NSBlockOperation *op2 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程2:%@",[NSThread currentThread]);
    }];
    
    
    NSBlockOperation *op3 = [NSBlockOperation blockOperationWithBlock:^{
        NSLog(@"当前线程3:%@",[NSThread currentThread]);
    }];
    
    
    //优先级
    op1.queuePriority = NSOperationQueuePriorityVeryLow;
    op2.queuePriority = NSOperationQueuePriorityVeryHigh;
    op3.queuePriority = NSOperationQueuePriorityNormal;
    
    //4、添加操作
    [queue addOperation:op2];
    [queue addOperation:op3];
    [queue addOperation:op1];
    
 
    
}












- (void)test{
    for (NSInteger i = 0; i < 2; i++) {
        NSLog(@"当前线程1:%@",[NSThread currentThread]);
    }
}























@end
