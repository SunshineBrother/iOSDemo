//
//  Person.h
//  isa指针
//
//  Created by yunna on 2018/10/23.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//@property (nonatomic,assign) BOOL tall;
//@property (nonatomic,assign) BOOL rich;
//@property (nonatomic,assign) BOOL handsome;

- (void)setTall:(BOOL)tall;
- (void)setRich:(BOOL)rich;
- (void)setHandsome:(BOOL)handsome;

- (BOOL)isTall;
- (BOOL)isRich;
- (BOOL)isHandsome;

@end
