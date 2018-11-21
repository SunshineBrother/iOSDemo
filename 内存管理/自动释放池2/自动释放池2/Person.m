//
//  Person.m
//  自动释放池2
//
//  Created by yunna on 2018/11/20.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"

@implementation Person


- (void)dealloc
{
    NSLog(@"%s", __func__);
    
}


@end
