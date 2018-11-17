//
//  ViewController.m
//  线程安全
//
//  Created by yunna on 2018/11/14.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "BaseDemo.h"
#import "OSSpinLockDemo.h"
#import "os_unfair_lockDemo.h"
#import "pthread_mutexDemo.h"
#import "pthread_mutexDemo1.h"
#import "NSConditionLockDemo.h"
#import "dispatch_semaphoreDemo.h"
#import "synchronizedDemo.h"
#import "pthread_rwlockDemo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
//    BaseDemo *base = [[BaseDemo alloc]init];
//    [base ticketTest];
    
//    OSSpinLockDemo *lock = [[OSSpinLockDemo alloc]init];
//    [lock ticketTest];
    
    
//    os_unfair_lockDemo *lock = [[os_unfair_lockDemo alloc]init];
//    [lock ticketTest];

//    pthread_mutexDemo*lock = [[pthread_mutexDemo alloc]init];
//    [lock ticketTest];
//

    
    
//    pthread_mutexDemo1 *demo = [[pthread_mutexDemo1 alloc]init];
//    [demo otherTest];
    
//    NSConditionLockDemo *demo = [[NSConditionLockDemo alloc]init];
//    [demo otherTest];
    
    
//    dispatch_semaphoreDemo *demo = [[dispatch_semaphoreDemo alloc]init];
//    [demo otherTest];
//
    
    
//    synchronizedDemo *demo = [[synchronizedDemo alloc]init];
//    [demo ticketTest];
//

    
    pthread_rwlockDemo *demo = [[pthread_rwlockDemo alloc]init];
    [demo otherTest];
    
}


@end
