//
//  Person.m
//  消息转发
//
//  Created by yunna on 2018/10/27.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"
#import "Student.h"
@implementation Person


//- (id)forwardingTargetForSelector:(SEL)aSelector{
//    if (aSelector == @selector(test)) {
//        return [[Student alloc]init];
//    }
//    return nil;
//}


- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector{
    if (aSelector == @selector(test)) {
        return [[[Student alloc]init] methodSignatureForSelector:aSelector];
//        return [NSMethodSignature signatureWithObjCTypes:"i@:i"];
    }
    
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    NSLog(@"========");
    anInvocation.target = [[Student alloc]init];
    [anInvocation invoke];
  
//    [anInvocation invokeWithTarget:[[Student alloc] init]];
}

@end
