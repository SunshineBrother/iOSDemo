//
//  main.m
//  Block底层
//
//  Created by yunna on 2018/9/12.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
int height = 180;
int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        
//        int age = 10;
//        static int weight = 65;
//        void (^block)(void) =  ^(){
//            NSLog(@"age---------%d",age);
//            NSLog(@"weight---------%d",weight);
//            NSLog(@"height---------%d",height);
//        };
//        block();
        
        void (^block1)(void) =  ^(){
            NSLog(@"block1");
        };
        int age = 10;
        void (^block2)(void) =  ^(){
            NSLog(@"block2");
            NSLog(@"age---------%d",age);
        };
        void (^block3)(void) = [ ^(){
            NSLog(@"block3");
            NSLog(@"age---------%d",age);
        } copy];
        
        NSLog(@"block1:%@---->block2:%@----->block3:%@",[block1 class],[block2 class],[block3 class]);
        
        
    }
    return 0;
}
