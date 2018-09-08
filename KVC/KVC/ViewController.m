//
//  ViewController.m
//  KVC
//
//  Created by yunna on 2018/9/6.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "Student.h"
@interface ViewController ()
@property (nonatomic,strong) Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    Person *p = [[Person alloc]init];
//    p.stu = [[Student alloc]init];
//    [p setValue:@180 forKeyPath:@"stu.height"];
//    NSLog(@"valueForKey:%@",[p valueForKeyPath:@"stu.height"]);
//    NSLog(@"stu.height:%f",p.stu.height);
    
//    Person *p = [[Person alloc]init];
//    [[p mutableArrayValueForKey:@"list"] addObject:@"test"];
//    NSLog(@"mutableArrayValueForKey:%@",[p valueForKeyPath:@"list"]);
//    NSLog(@"%@",p.list);
    
    
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    _p = [[Person alloc]init];
    [_p addObserver:self forKeyPath:@"list" options:options context:nil];
    
    
    //setValuesForKeysWithDictionary
//    Student *stu = [[Student alloc]init];
//    stu.age = 10;
//    stu.name = @"jack";
//    stu.height = 180;
    
//    Student *stu = [[Student alloc]init];
//    NSDictionary *dic = @{@"name":@"jack",@"height":@180,@"age":@10};
//    [stu setValuesForKeysWithDictionary:dic];
    
    //异常处理
    Student *stu = [[Student alloc]init];
    [stu setValue:@"12304672587213" forKey:@"number"];
    [stu setValue:nil forKey:@"age"];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [_p.list addObject:@(arc4random()%255)];
//    NSLog(@"打印内存地址：%x",self.p.list);
//    NSLog(@"打印内容:%@",self.p.list);
    
//    [[self.p mutableArrayValueForKey:@"list"] addObject:@(arc4random()%255)];
//    NSLog(@"打印内存地址：%x",self.p.list);
//    NSLog(@"打印内容:%@",self.p.list);
    
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"%@",change);
}

-(void)dealloc{
    [_p removeObserver:self forKeyPath:@"list"]; //一定要在dealloc里面移除观察
}





@end













