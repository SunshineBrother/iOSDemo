//
//  Person.m
//  isa指针
//
//  Created by yunna on 2018/10/23.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "Person.h"
@interface Person()
{
    // 位域
    struct {
        char tall : 1;
        char rich : 1;
        char handsome : 1;
    } _tallRichHandsome;
}
@end
@implementation Person

- (void)setTall:(BOOL)tall
{
    _tallRichHandsome.tall = tall;
}

- (BOOL)isTall
{
    return !!_tallRichHandsome.tall;
}

- (void)setRich:(BOOL)rich
{
    _tallRichHandsome.rich = rich;
}

- (BOOL)isRich
{
    return !!_tallRichHandsome.rich;
}

- (void)setHandsome:(BOOL)handsome
{
    _tallRichHandsome.handsome = handsome;
}

- (BOOL)isHandsome
{
    return !!_tallRichHandsome.handsome;
}



@end
