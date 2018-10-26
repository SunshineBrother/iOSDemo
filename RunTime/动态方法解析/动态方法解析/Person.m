//
//  Person.m
//  动态方法解析
//
//  Created by yunna on 2018/10/26.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
@implementation Person


#pragma mark -- 动态解析3 --
void c_other(id self, SEL _cmd)
{
    NSLog(@"c_other - %@ - %@", self, NSStringFromSelector(_cmd));
}
+ (BOOL)resolveInstanceMethod:(SEL)sel{
    
    if (sel == @selector(test)) {
        
        class_addMethod(self, sel, (IMP)c_other, "v16@0:8");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}


#pragma mark -- 动态解析2 --
- (void)other{
    NSLog(@"%s",__func__);
}

//struct method_t {
//    SEL sel;
//    char *types;
//    IMP imp;
//};
//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//
//    if (sel == @selector(test)) {
//        //获取其他方法
//        struct method_t *method = (struct method_t *)class_getInstanceMethod(self, @selector(other));
//        //动态添加test的方法
//        class_addMethod(self, sel, method->imp, method->types);
//
//        return  YES;
//    }
//
//    return [super resolveInstanceMethod:sel];
//}

#pragma mark -- 动态解析1 --
//+ (BOOL)resolveInstanceMethod:(SEL)sel{
//    if (sel == @selector(test)) {
//        //获取其他方法
//        Method method = class_getInstanceMethod(self, @selector(other));
//        //动态添加test的方法
//        class_addMethod(self, sel, method_getImplementation(method), method_getTypeEncoding(method));
//    }
//
//    return [super resolveInstanceMethod:sel];
//}

@end
