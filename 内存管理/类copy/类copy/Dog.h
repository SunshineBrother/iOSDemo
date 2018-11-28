//
//  Dog.h
//  类copy
//
//  Created by yunna on 2018/11/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject<NSCopying>

@property (nonatomic,assign) int age;
@property (nonatomic,copy) NSString *name;


@end

NS_ASSUME_NONNULL_END
