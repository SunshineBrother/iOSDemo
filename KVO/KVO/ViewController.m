//
//  ViewController.m
//  KVO
//
//  Created by yunna on 2018/9/3.
//  Copyright © 2018年 yunna. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/runtime.h>
@interface ViewController ()

@property (nonatomic,strong) Person *p1;
@property (nonatomic,strong) Person *p2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.p1 = [[Person alloc]init];
    self.p2 = [[Person alloc]init];
    self.p1.age = 10;
    self.p2.age = 20;
    NSLog(@"person1添加KVO监听之前 - %@ %@",
              object_getClass(self.p1),
              object_getClass(self.p2));
    
    NSLog(@"person1添加KVO监听之前的内部方法===");
    [self printMethodNamesOfClass:object_getClass(self.p1)];
    
    
    NSLog(@"person1添加KVO监听之前 - %p %p",
              [self.p1 methodForSelector:@selector(setAge:)],
              [self.p2 methodForSelector:@selector(setAge:)]);

    // 给person1对象添加KVO监听
    NSKeyValueObservingOptions options = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [self.p1 addObserver:self forKeyPath:@"age" options:options context:@"123"];
 
    NSLog(@"person1添加KVO监听之后 - %p %p",
          [self.p1 methodForSelector:@selector(setAge:)],
          [self.p2 methodForSelector:@selector(setAge:)]);
        NSLog(@"person1添加KVO监听之后的内部方法===");
        [self printMethodNamesOfClass:object_getClass(self.p1)];
    NSLog(@"person1添加KVO监听之后 - %@ %@",
          object_getClass(self.p1),
          object_getClass(self.p2));

    
    
 
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.p1.age = arc4random()%100;
    self.p2.age = arc4random()%100;
   
}

- (void)dealloc {
    NSLog(@"打印dealloc");
//    [self.p1 removeObserver:self forKeyPath:@"age"];
//    [self.p1 removeObserver:self forKeyPath:@"age"];
    
}
// 当监听对象的属性值发生改变时，就会调用
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"监听到%@的%@属性值改变了 - %@ - %@", object, keyPath, change, context);
}


//打印一下方法名
- (void)printMethodNamesOfClass:(Class)cls
{
    unsigned int count;
    // 获得方法数组
    Method *methodList = class_copyMethodList(cls, &count);
    
    // 存储方法名
    NSMutableString *methodNames = [NSMutableString string];
    
    // 遍历所有的方法
    for (int i = 0; i < count; i++) {
        // 获得方法
        Method method = methodList[i];
        // 获得方法名
        NSString *methodName = NSStringFromSelector(method_getName(method));
        // 拼接方法名
        [methodNames appendString:methodName];
        [methodNames appendString:@", "];
    }
    
    // 释放
    free(methodList);
    
    // 打印方法名
    NSLog(@"%@ %@", cls, methodNames);
}


@end

































