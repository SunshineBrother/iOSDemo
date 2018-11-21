//
//  main.m
//  自动释放池
//
//  Created by yunna on 2018/11/20.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
extern void _objc_autoreleasePoolPrint(void);
int main(int argc, const char * argv[]) {
    @autoreleasepool {//r1 = push()
        Person *p1 = [[[Person alloc]init] autorelease];
        Person *p2 = [[[Person alloc]init] autorelease];
        @autoreleasepool {//r2 = push()
            Person *p3 = [[[Person alloc]init] autorelease];
            @autoreleasepool {//r3 = push()
                Person *p4 = [[[Person alloc]init] autorelease];
                _objc_autoreleasePoolPrint();
            }//pop(r3)
        }//pop(r2)
    }//pop(r1)
   
    return 0;
}
