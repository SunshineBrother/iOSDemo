//
//  main.m
//  RunTime
//
//  Created by yunna on 2018/10/31.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "Person.h"
#import "Cat.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *p = [[Person alloc]init];
        object_setClass(p, [Cat class]);
        NSLog(@"%@",p);
        
    }
    return 0;
}


void testClass()
{
    // 创建类
    Class newClass = objc_allocateClassPair([NSObject class], "MJDog", 0);
    class_addIvar(newClass, "_age", 4, 1, @encode(int));
    class_addIvar(newClass, "_weight", 4, 1, @encode(int));
    //注册类
    objc_registerClassPair(newClass);
    
    // 成员变量的数量
    unsigned int count;
    Ivar *ivars = class_copyIvarList(newClass, &count);
    for (int i = 0; i < count; i++) {
        // 取出i位置的成员变量
        Ivar ivar = ivars[i];
        NSLog(@"%s %s", ivar_getName(ivar), ivar_getTypeEncoding(ivar));
    }
    free(ivars);
    
    // 在不需要这个类时释放
        objc_disposeClassPair(newClass);
}



void testClass1()
{
    Person *p = [[Person alloc]init];
    object_setClass(p, [Cat class]);
    NSLog(@"%@",p);
    
}


















