//
//  main.m
//  TaggedPointer
//
//  Created by yunna on 2018/11/27.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
int a = 10;
int b;
void test(){
    static int c = 20;
    static int d;
    int e;
    int f = 20;
    NSString *str = @"123";
    NSObject *obj = [[NSObject alloc] init];
    NSLog(@"\n&a=%p\n&b=%p\n&c=%p\n&d=%p\n&e=%p\n&f=%p\nstr=%p\nobj=%p\n",
          &a, &b, &c, &d, &e, &f, str, obj);
}

/*
 str = 0x105604068    //字符串常量
 &a  = 0x105604d98    //已初始化的全局变量、静态变量
 &c  = 0x105604d9c    //已初始化的全局变量、静态变量
 &b  = 0x105604e64    //未初始化的全局变量、静态变量
 &d  = 0x105604e60    //未初始化的全局变量、静态变量
 obj = 0x608000012210 // 堆
 &e  = 0x7ffeea5fcff4 // 栈
 &f  = 0x7ffeea5fcff0 // 栈
 */

int main(int argc, char * argv[]) {
    @autoreleasepool {
         
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}

