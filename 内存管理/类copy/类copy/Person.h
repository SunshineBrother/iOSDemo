//
//  Person.h
//  类copy
//
//  Created by yunna on 2018/11/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dog.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic,copy) Dog *dog;

@end

NS_ASSUME_NONNULL_END
