//
//  OSSpinLockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/15.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "OSSpinLockDemo.h"
#import <libkern/OSAtomic.h>
@interface OSSpinLockDemo()
@property (assign, nonatomic) OSSpinLock ticketLock;
@end

@implementation OSSpinLockDemo

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ticketLock = OS_SPINLOCK_INIT;
    }
    return self;
}


//卖票
- (void)sellingTickets{
    OSSpinLockLock(&_ticketLock);
    
    [super sellingTickets];
    
    OSSpinLockUnlock(&_ticketLock);
}

@end





