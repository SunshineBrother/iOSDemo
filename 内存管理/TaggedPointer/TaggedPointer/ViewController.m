//
//  ViewController.m
//  TaggedPointer
//
//  Created by yunna on 2018/11/27.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSString *name;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    NSString *str1 = [NSString stringWithFormat:@"abc"];
    NSString *str2 = [NSString stringWithFormat:@"abcdefghijk"];
    NSLog(@"\n[str1 class]=%@\n[str2 class]=%@",[str1 class],[str2 class]);
     
}


@end
