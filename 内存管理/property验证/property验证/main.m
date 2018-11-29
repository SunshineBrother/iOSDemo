//
//  main.m
//  property验证
//
//  Created by yunna on 2018/11/29.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import <objc/runtime.h>


int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        u_int methodCount;
        NSMutableArray *methodList = [NSMutableArray array];
        Method *methods = class_copyMethodList([Person class], &methodCount);
        for (int i = 0; i < methodCount; i++)
        {
            SEL name = method_getName(methods[i]);
            NSString *strName = [NSString stringWithCString:sel_getName(name) encoding:NSUTF8StringEncoding];
            [methodList addObject:strName];
        }
        free(methods);
        
        NSLog(@"方法列表:%@",methodList);
        
       
        
      
    }
    return 0;
}
