//
//  ViewController.m
//  LLDB
//
//  Created by yunna on 2018/10/18.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    Person *per = [[Person alloc]init];
//    per.name = @"Tom";
//    NSLog(@"%s",__func__);
    
    
   
//    NSLog(@"%d",[self yesOrNo]);
    [self testVar];
}

- (void)testVar{
    NSString *test = @"局部变量";
    NSLog(@"%@",test);
}
- (BOOL)yesOrNo{
    int rand = arc4random() % 2;
    if (rand == 0) {
        return YES;
    }
    return NO;
}


@end














