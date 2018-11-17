//
//  BaseDemo.h
//  线程安全
//
//  Created by yunna on 2018/11/14.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseDemo : NSObject

//卖票演示
- (void)ticketTest;

//卖票
- (void)sellingTickets;



@end

NS_ASSUME_NONNULL_END
