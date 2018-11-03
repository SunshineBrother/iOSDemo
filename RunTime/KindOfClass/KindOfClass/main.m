//
//  main.m
//  KindOfClass
//
//  Created by yunna on 2018/10/29.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
         NSLog(@"%d", [NSObject isKindOfClass:[NSObject class]]);
         NSLog(@"%d", [Person isKindOfClass:[NSObject class]]);
        NSLog(@"%d", [Person  isKindOfClass:[Person class]]);
       
        
        
    }
    return 0;
}





