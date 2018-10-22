//
//  Person.m
//  LLDB
//
//  Created by yunna on 2018/10/18.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"

@implementation Person
- (NSString *)description
{
    return [NSString stringWithFormat:@"name:%@", self.name];
}
@end
