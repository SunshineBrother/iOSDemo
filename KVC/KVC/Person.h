//
//  Person.h
//  KVC
//
//  Created by yunna on 2018/9/6.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
@interface Person : NSObject

@property (nonatomic,assign) int age;
@property (nonatomic,strong) Student *stu;
@property (nonatomic,strong) NSMutableArray *list;

@end
