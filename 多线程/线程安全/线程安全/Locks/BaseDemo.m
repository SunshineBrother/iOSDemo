//
//  BaseDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/14.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "BaseDemo.h"
@interface BaseDemo()
@property (assign, nonatomic) int ticketsCount;
@end
@implementation BaseDemo

//卖票演示
- (void)ticketTest{
    self.ticketsCount = 50;
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    
    for (NSInteger i = 0; i < 5; i++) {
        dispatch_async(queue, ^{
            for (int i = 0; i < 10; i++) {
                [self sellingTickets];
            }
        });
    }
    
}
//卖票
- (void)sellingTickets{
    int oldMoney = self.ticketsCount;
    sleep(.2);
    oldMoney -= 1;
    self.ticketsCount = oldMoney;
    
    NSLog(@"当前剩余票数-> %d", oldMoney);
}



@end
