//
//  main.m
//  NSObject对象内存
//
//  Created by yunna on 2018/8/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

@interface Person : NSObject{
@public
    int _number;
    int _age;
}
@end

@implementation Person

@end

@interface Student : Person{
    @public
    int _height;
}
@end

@implementation Student

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
//         NSObject *obj = [[NSObject alloc] init];
//        // 获得NSObject实例对象的成员变量所占用的大小 >> 8
//        NSLog(@"%zd", class_getInstanceSize([NSObject class]));
//
//        // 获得obj指针所指向内存的大小 >> 16
//        NSLog(@"%zd", malloc_size((__bridge const void *)obj));
        
        Student *stu = [[Student alloc]init];
        stu->_number = 4;
        stu->_age = 5;
        stu->_height = 180;
        
        
        NSLog(@"%zd", class_getInstanceSize([Student class]));
        NSLog(@"%zd", malloc_size((__bridge const void *)stu));
        
        
        
    }
    return 0;
}
