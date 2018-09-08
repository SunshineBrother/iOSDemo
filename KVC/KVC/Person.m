//
//  Person.m
//  KVC
//
//  Created by yunna on 2018/9/6.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.list = [NSMutableArray new];
    }
    return self;
}

@end
