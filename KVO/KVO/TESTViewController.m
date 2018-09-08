//
//  TESTViewController.m
//  KVO
//
//  Created by yunna on 2018/9/4.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "TESTViewController.h"
#import "ViewController.h"
@interface TESTViewController ()

@end

@implementation TESTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
- (IBAction)button:(id)sender {
    ViewController *vc = [[ViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



@end
