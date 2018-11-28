//
//  Person.m
//  Copy
//
//  Created by yunna on 2018/11/26.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)setName:(NSString *)name{
    [_name release];
    _name = name;
}

- (void)dealloc{
    NSLog(@"%s",__func__);
    [super dealloc];
}

@end
