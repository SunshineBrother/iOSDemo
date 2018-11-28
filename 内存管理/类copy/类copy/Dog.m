//
//  Dog.m
//  类copy
//
//  Created by yunna on 2018/11/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (id)copyWithZone:(NSZone *)zone{
    Dog *d = [[self class]allocWithZone:zone];
    d.age = _age;
    d.name = _name;
    return d;
}

- (void)dealloc{
    NSLog(@"%s",__func__);
     
}

@end
