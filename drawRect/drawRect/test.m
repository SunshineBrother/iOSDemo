//
//  test.m
//  drawRect
//
//  Created by yunna on 2019/4/28.
//  Copyright © 2019年 yunna. All rights reserved.
//

#import "test.h"

@implementation test

//触摸移动过程中
- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //拿到触摸点
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    
    //调用绘图方法
    [self setNeedsDisplay];
}

//这是是用drawRect绘图
- (void)drawRect:(CGRect)rect {
    
    //获取绘图需要的上下文，他是专门用来保存绘画期间的数据的
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    //设置填充颜色
    [[UIColor blueColor] setFill];
    
    //设置描边颜色
    [[UIColor redColor] setStroke];
    
    //设置线宽
    CGContextSetLineWidth(contextRef, 2);
    //线的样式
    path.lineJoinStyle= kCGLineCapButt;
    //设置颜色
    [[UIColor grayColor] set];
    
    //如果按钮不在当前点，就把当前触摸点作为当前点，可以使线随着拖动位置变化而变化
    [path addLineToPoint:_currentPoint];
    //把路径添加到上下文
    CGContextAddPath(contextRef, path.CGPath);
    //渲染
    CGContextStrokePath(contextRef);
}



@end
