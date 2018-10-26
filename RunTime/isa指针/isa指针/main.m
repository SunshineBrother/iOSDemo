//
//  main.m
//  isa指针
//
//  Created by yunna on 2018/10/23.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        Person *p = [[Person alloc]init];
        p.tall = YES;
        p.rich = YES;
        p.handsome = YES;
        
        NSLog(@"%zd",class_getInstanceSize([p class]));
        
        
        
    }
    return 0;
}
