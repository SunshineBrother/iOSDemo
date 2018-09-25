//
//  Person.m
//  Block底层1
//
//  Created by yunna on 2018/9/19.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"

@implementation Person
- (void)dealloc{
    [super dealloc];
    NSLog(@"person--->dealloc");
}
@end
