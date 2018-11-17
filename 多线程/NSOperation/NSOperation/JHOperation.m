//
//  JHOperation.m
//  NSOperation
//
//  Created by yunna on 2018/11/10.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "JHOperation.h"

@implementation JHOperation
- (void)main {
    if (!self.isCancelled) {
        for (int i = 0; i < 2; i++) {
            
            NSLog(@"当前线程：%@", [NSThread currentThread]);
        }
    }
}

@end
