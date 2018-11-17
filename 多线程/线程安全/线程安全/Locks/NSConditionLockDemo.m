//
//  NSConditionLockDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "NSConditionLockDemo.h"
@interface NSConditionLockDemo()
@property (strong, nonatomic) NSConditionLock *conditionLock;
@end
@implementation NSConditionLockDemo
- (instancetype)init
{
    if (self = [super init]) {
        self.conditionLock = [[NSConditionLock alloc] initWithCondition:1];
    }
    return self;
}

- (void)otherTest
{
    [[[NSThread alloc] initWithTarget:self selector:@selector(__one) object:nil] start];
    [[[NSThread alloc] initWithTarget:self selector:@selector(__two) object:nil] start];
}

- (void)__one
{
    [self.conditionLock lock];
    NSLog(@"__one");
    sleep(1);
    [self.conditionLock unlockWithCondition:2];
}

- (void)__two
{
    [self.conditionLock lockWhenCondition:2];
    NSLog(@"__two");
    [self.conditionLock unlockWithCondition:3];
}
@end
