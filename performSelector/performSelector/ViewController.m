//
//  ViewController.m
//  performSelector
//
//  Created by yunna on 2019/4/3.
//  Copyright © 2019年 yunna. All rights reserved.
//
/*
 - (id)performSelector:(SEL)aSelector;
 - (id)performSelector:(SEL)aSelector withObject:(id)object;
 - (id)performSelector:(SEL)aSelector withObject:(id)object1 withObject:(id)object2;
 
 - (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay inModes:(NSArray<NSRunLoopMode> *)modes;
 - (void)performSelector:(SEL)aSelector withObject:(nullable id)anArgument afterDelay:(NSTimeInterval)delay;
 + (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget selector:(SEL)aSelector object:(nullable id)anArgument;
 + (void)cancelPreviousPerformRequestsWithTarget:(id)aTarget;
 
 
 - (void)performSelector:(SEL)aSelector target:(id)target argument:(nullable id)arg order:(NSUInteger)order modes:(NSArray<NSRunLoopMode> *)modes;
 - (void)cancelPerformSelector:(SEL)aSelector target:(id)target argument:(nullable id)arg;
 - (void)cancelPerformSelectorsWithTarget:(id)target;
 
 
 - (void)performSelectorOnMainThread:(SEL)aSelector withObject:(nullable id)arg waitUntilDone:(BOOL)wait modes:(nullable NSArray<NSString *> *)array;
 - (void)performSelectorOnMainThread:(SEL)aSelector withObject:(nullable id)arg waitUntilDone:(BOOL)wait;
 
 - (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(nullable id)arg waitUntilDone:(BOOL)wait modes:(nullable NSArray<NSString *> *)array
 
 - (void)performSelector:(SEL)aSelector onThread:(NSThread *)thr withObject:(nullable id)arg waitUntilDone:(BOOL)wait
 
 - (void)performSelectorInBackground:(SEL)aSelector withObject:(nullable id)arg
 
 @end

 */
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test3];
}

#pragma mark -- 基础测试 --
//- (void)test1{
//    [self performSelector:@selector(play)];
//    [self performSelector:@selector(play:) withObject:@{@"A":@"a"}];
//    [self performSelector:@selector(play:with:) withObject:@{@"A":@"a"} withObject:@{@"B":@"b"}];
//}
//

#pragma mark -- 延迟测试 --

- (void)test2{
//    [self performSelector:@selector(play) withObject:@{@"A":@"a"} afterDelay:1];
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSLog(@"1");
        [self performSelector : @selector(play)
                   withObject : nil
                   afterDelay : 1];
        [[NSRunLoop currentRunLoop] run];
        NSLog(@"3");
    });
   
}

#pragma mark -- 顺序执行 --
- (void)test3{
    
    [[NSRunLoop currentRunLoop]performSelector:@selector(play1) target:self argument:nil order:1 modes:@[(NSRunLoopMode)kCFRunLoopDefaultMode]];
    [[NSRunLoop currentRunLoop]performSelector:@selector(play5) target:self argument:nil order:5 modes:@[(NSRunLoopMode)kCFRunLoopDefaultMode]];
    [[NSRunLoop currentRunLoop]performSelector:@selector(play2) target:self argument:nil order:2 modes:@[(NSRunLoopMode)kCFRunLoopDefaultMode]];
    [[NSRunLoop currentRunLoop]performSelector:@selector(play3) target:self argument:nil order:3 modes:@[(NSRunLoopMode)kCFRunLoopDefaultMode]];
    [[NSRunLoop currentRunLoop]performSelector:@selector(play4) target:self argument:nil order:4 modes:@[(NSRunLoopMode)kCFRunLoopDefaultMode]];
 
}

- (void)play1{
    NSLog(@"%s",__func__);
}
- (void)play2{
    NSLog(@"%s",__func__);
}
- (void)play3{
    NSLog(@"%s",__func__);
}
- (void)play4{
    NSLog(@"%s",__func__);
}
- (void)play5{
    NSLog(@"%s",__func__);
}

- (void)play{
    NSLog(@"2");
}

- (void)play:(NSDictionary *)obj{
    NSLog(@"%@",obj);
}
- (void)play:(NSDictionary *)obj with:(NSDictionary *)obj1{
    NSLog(@"%@",obj);
}


@end
