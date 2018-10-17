//
//  ViewController.m
//  RunLoop
//
//  Created by yunna on 2018/10/13.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
//    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
//    NSRunLoop *currentLoop = [NSRunLoop mainRunLoop];
//
//    CFRunLoopRef runLoop1 = CFRunLoopGetCurrent();
//    CFRunLoopRef currentLoop1 = CFRunLoopGetMain();
//
//    NSLog(@"Fundation:runLoop:%p-->currentLoop:%p",runLoop,currentLoop);
//    NSLog(@"Core Foundation:runLoop:%p-->currentLoop:%p",runLoop1,currentLoop1);
    
    
//    NSLog(@"%@",[NSRunLoop currentRunLoop]);
    
    
//    //创建observer
//    CFRunLoopObserverRef observer = CFRunLoopObserverCreateWithHandler(kCFAllocatorDefault, kCFRunLoopAllActivities, YES, 0, ^(CFRunLoopObserverRef observer, CFRunLoopActivity activity) {
//        switch (activity) {
//            case kCFRunLoopEntry:
//                NSLog(@"kCFRunLoopEntry");
//                break;
//            case kCFRunLoopBeforeTimers:
//                NSLog(@"kCFRunLoopBeforeTimers");
//                break;
//            case kCFRunLoopBeforeSources:
//                NSLog(@"kCFRunLoopBeforeSources");
//                break;
//            case kCFRunLoopBeforeWaiting:
//                NSLog(@"kCFRunLoopBeforeWaiting");
//                break;
//            case kCFRunLoopAfterWaiting:
//                NSLog(@"kCFRunLoopAfterWaiting");
//                break;
//            case kCFRunLoopExit:
//                NSLog(@"kCFRunLoopExit");
//                break;
//            default:
//                break;
//        }
//    });
//
//    //添加observer到runloop中
//    CFRunLoopAddObserver(CFRunLoopGetMain(), observer, kCFRunLoopCommonModes);
//    // 释放
//    CFRelease(observer);
    
    
    static int count = 0;
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 repeats:YES block:^(NSTimer * _Nonnull timer) {
        NSLog(@"%d",count++);
    }];
}



//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//        [NSTimer scheduledTimerWithTimeInterval:3.0 repeats:NO block:^(NSTimer * _Nonnull timer) {
//            NSLog(@"定时器-----------");
//        }];
//}



@end
