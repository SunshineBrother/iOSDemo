//
//  RecursiveLockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "RecursiveLockDemo.h"
@interface RecursiveLockDemo()
@property (nonatomic,strong) NSRecursiveLock *ticketLock;
@end
@implementation RecursiveLockDemo
//卖票
- (void)sellingTickets{
    [self.ticketLock lock];
    [super sellingTickets];
    [self.ticketLock unlock];
}
@end
