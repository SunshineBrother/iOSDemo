//
//  main.m
//  __Block
//
//  Created by yunna on 2018/9/22.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^Block)(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        __block int age = 10;
        NSLog(@"block前age地址1：%p",&age);
        Block block = ^{
            age = 20;
            NSLog(@"block内%d-->age地址2：%p",age,&age);
        };
       
        block();
        NSLog(@"block后%d-->age地址3：%p",age,&age);
        
    }
    return 0;
}



















