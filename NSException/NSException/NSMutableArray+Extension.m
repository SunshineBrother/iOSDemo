//
//  NSMutableArray+Extension.m
//  NSException
//
//  Created by yunna on 2018/11/15.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "NSMutableArray+Extension.h"
#import <objc/runtime.h>
@implementation NSMutableArray (Extension)

+ (void)load {
    
    Class arrayMClass = NSClassFromString(@"__NSArrayM");
    //获取系统的添加元素的方法
    Method addObject = class_getInstanceMethod(arrayMClass, @selector(objectAtIndexedSubscript:));
    
    //获取我们自定义添加元素的方法
    Method avoidCrash = class_getInstanceMethod(arrayMClass, @selector(avoidCrashobjectAtIndexedSubscript:));

    method_exchangeImplementations(addObject, avoidCrash);
   
    
}

- (id)avoidCrashobjectAtIndexedSubscript:(NSUInteger)idx {
    
    @try {
       return [self avoidCrashobjectAtIndexedSubscript:idx];
    }
    @catch (NSException *exception) {
        //你可以在这里进行相应的操作处理
        NSLog(@"这里数组越界");
        NSLog(@"异常名称:%@   异常原因:%@",exception.name, exception.reason);
    }
    @finally {
        
    }
}




@end
