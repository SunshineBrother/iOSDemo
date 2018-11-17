//
//  synchronizedDemo.m
//  线程安全
//
//  Created by yunna on 2018/11/17.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "synchronizedDemo.h"

@implementation synchronizedDemo


//卖票
- (void)sellingTickets{
    @synchronized ([self class]) { // objc_sync_enter
        [super sellingTickets];
    }// objc_sync_exit
}

@end
