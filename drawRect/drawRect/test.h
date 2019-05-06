//
//  test.h
//  drawRect
//
//  Created by yunna on 2019/4/28.
//  Copyright © 2019年 yunna. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface test : UIView
//记录当前手势所在点，用来划线
@property (nonatomic)CGPoint currentPoint;
@end

NS_ASSUME_NONNULL_END
