//
//  main.m
//  Block底层1
//
//  Created by yunna on 2018/9/19.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
typedef void (^Block)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
   
        Block block;
        {
            Person *p = [[Person alloc] init];
            block = ^{
                NSLog(@"%@",p);
            };
            [p release];
        }
        block();
        NSLog(@"--------");
        
    }
    
    return 0;
}
