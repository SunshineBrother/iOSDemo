//
//  ViewController.m
//  Strong
//
//  Created by yunna on 2018/11/28.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) NSString *strStrong;
@property (copy, nonatomic) NSString *strCopy;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"abc"];
    self.strCopy = str;
    self.strStrong = str;
    
    NSLog(@"\nstr     = %@   内存地址 = %p 指针地址 = %p \nstrong  = %@   内存地址 = %p 指针地址 = %p \ncopy    = %@   内存地址 = %p 指针地址 = %p",
          str,str,&str,
          self.strStrong,self.strStrong,&_strStrong,
          self.strCopy,self.strCopy,&_strCopy);
    
    [str appendString:@"123"];
    NSLog(@"\nstr     = %@   内存地址 = %p 指针地址 = %p \nstrong  = %@   内存地址 = %p 指针地址 = %p \ncopy    = %@   内存地址 = %p 指针地址 = %p",
          str,str,&str,
          self.strStrong,self.strStrong,&_strStrong,
          self.strCopy,self.strCopy,&_strCopy);
    
    
}


@end
