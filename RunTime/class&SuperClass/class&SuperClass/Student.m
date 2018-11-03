//
//  Student.m
//  class&SuperClass
//
//  Created by yunna on 2018/10/27.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Student.h"

@implementation Student

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSLog(@"[self class] = %@",[self class]);
        NSLog(@"[super class] = %@",[super class]);
        NSLog(@"============");
        NSLog(@"[self superclass] = %@",[self superclass]);
        NSLog(@"[super superclass] = %@",[super superclass]);
        
    }
    return self;
}


- (void)test{
    [super test];
    NSLog(@"11111111111111111111");
}


@end
