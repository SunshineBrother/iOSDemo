//
//  Student.m
//  KVC
//
//  Created by yunna on 2018/9/8.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Student.h"

@implementation Student
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    NSLog(@"没有找到key值");
}
- (void)setNilValueForKey:(NSString *)key {
    NSLog(@"没有传进vaule值");
}
 
@end
