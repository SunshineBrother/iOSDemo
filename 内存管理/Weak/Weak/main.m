//
//  main.m
//  Weak
//
//  Created by yunna on 2018/11/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        __weak NSObject *obj2;
        {
            id obj1 = [[NSObject alloc] init];
            obj2 = obj1;
        }
        NSLog(@"%@",obj2);
        
    }
    return 0;
}
