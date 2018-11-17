//
//  LockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "LockDemo.h"
@interface LockDemo()
@property (strong, nonatomic) NSLock *ticketLock;
@end

@implementation LockDemo

//卖票
- (void)sellingTickets{
    [self.ticketLock lock];
    [super sellingTickets];
    [self.ticketLock unlock];
}

@end
