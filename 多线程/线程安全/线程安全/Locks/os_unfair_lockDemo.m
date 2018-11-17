//
//  os_unfair_lockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/15.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "os_unfair_lockDemo.h"
#import <os/lock.h>
@interface os_unfair_lockDemo()
@property (assign, nonatomic) os_unfair_lock ticketLock;
@end

@implementation os_unfair_lockDemo
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.ticketLock = OS_UNFAIR_LOCK_INIT;
    }
    return self;
}


//卖票
- (void)sellingTickets{
    os_unfair_lock_lock(&_ticketLock);
    
    [super sellingTickets];
    
    os_unfair_lock_unlock(&_ticketLock);
}
@end
