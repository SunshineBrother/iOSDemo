//
//  main.m
//  atomic
//
//  Created by yunna on 2018/11/22.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person * p = [[Person alloc]init];
        dispatch_queue_t queue = dispatch_queue_create("test", DISPATCH_QUEUE_CONCURRENT);
        for (NSInteger i = 0; i < 10; i++) {
            NSLog(@"------%ld------",i);
            dispatch_async(queue, ^{
                p.name = [NSString stringWithFormat:@"%ld",i];
            });
            dispatch_async(queue, ^{
                [p.name release];
            });
        }
        
        [p release];
        
    }
    return 0;
}
