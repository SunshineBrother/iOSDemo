//
//  main.m
//  Copy
//
//  Created by yunna on 2018/11/26.
//  Copyright © 2018年 yunna. All rights reserved.
//
// 拷贝的目的：产生一个副本对象，跟源对象互不影响
// 修改了源对象，不会影响副本对象
// 修改了副本对象，不会影响源对象

/*
 iOS提供了2个拷贝方法
 1.copy，不可变拷贝，产生不可变副本
 
 2.mutableCopy，可变拷贝，产生可变副本
 
 深拷贝和浅拷贝
 1.深拷贝：内容拷贝，产生新的对象
 2.浅拷贝：指针拷贝，没有产生新的对象
 */
#import <Foundation/Foundation.h>
#import "Person.h"

void test1()
{
    NSString *str1 = [NSString stringWithFormat:@"test"];
    NSString *str2 = [str1 copy]; // 返回的是NSString
    NSMutableString *str3 = [str1 mutableCopy]; // 返回的是NSMutableString
    NSLog(@"%p %p %p", str1, str2, str3);
}
void test2()
{
    NSMutableString *str1 = [[NSMutableString alloc] initWithFormat:@"test"]; // 1
    NSString *str2 = [str1 copy]; // 深拷贝
    NSMutableString *str3 = [str1 mutableCopy]; // 深拷贝
    NSLog(@"%p %p %p", str1, str2, str3);
}

void test3()
{
    NSArray *array1 = [[NSArray alloc] initWithObjects:@"a", @"b", nil];
    NSArray *array2 = [array1 copy]; // 浅拷贝
    NSMutableArray *array3 = [array1 mutableCopy]; // 深拷贝
    
    NSLog(@"%p %p %p", array1, array2, array3);
}

void test4()
{
    NSMutableArray *array1 = [[NSMutableArray alloc] initWithObjects:@"a", @"b", nil];
    NSArray *array2 = [array1 copy]; // 深拷贝
    NSMutableArray *array3 = [array1 mutableCopy]; // 深拷贝
    
    NSLog(@"%p %p %p", array1, array2, array3);
}

void test5()
{
    NSDictionary *dict1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"jack", @"name", nil];
    NSDictionary *dict2 = [dict1 copy]; // 浅拷贝
    NSMutableDictionary *dict3 = [dict1 mutableCopy]; // 深拷贝
    
    NSLog(@"%p %p %p", dict1, dict2, dict3);
}

void test6()
{
    NSMutableDictionary *dict1 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:@"jack", @"name", nil];
    NSDictionary *dict2 = [dict1 copy]; // 深拷贝
    NSMutableDictionary *dict3 = [dict1 mutableCopy]; // 深拷贝
    
    NSLog(@"%p %p %p", dict1, dict2, dict3);
    
}

void test7()
{
    Person *p = [[Person alloc]init];
    p.name = @"jack";
    NSLog(@"%@",p.name);
    
    Person *p1 = [[Person alloc]init];
    p1.name = @"tom";
    NSLog(@"%@",p1.name);
    
    
    [p release];
    [p1 release];
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        
        
    }
    return 0;
}



































