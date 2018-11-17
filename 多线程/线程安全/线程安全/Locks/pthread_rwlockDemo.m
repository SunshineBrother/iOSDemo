//
//  pthread_rwlockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "pthread_rwlockDemo.h"
#import <pthread.h>
@interface pthread_rwlockDemo ()
@property (assign, nonatomic) pthread_rwlock_t lock;
@end

@implementation pthread_rwlockDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        // 初始化锁
        pthread_rwlock_init(&_lock, NULL);
    }
    return self;
}

- (void)otherTest{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    for (int i = 0; i < 10; i++) {
        dispatch_async(queue, ^{
            [self read];
        });
        dispatch_async(queue, ^{
            [self write];
        });
    }
}

- (void)read {
    pthread_rwlock_rdlock(&_lock);
    sleep(1);
    NSLog(@"%s", __func__);
    pthread_rwlock_unlock(&_lock);
}

- (void)write
{
    pthread_rwlock_wrlock(&_lock);
    sleep(1);
    NSLog(@"%s", __func__);
    pthread_rwlock_unlock(&_lock);
}

- (void)dealloc
{
    pthread_rwlock_destroy(&_lock);
}

@end
