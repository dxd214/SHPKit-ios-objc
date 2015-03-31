//
//  UIWindow+ZYTools.h
//  
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "ZYUIKit.h"

@interface UIWindow (ZYTools)
//instance method
- (UIViewController *)topViewController;
//class method
+ (UIViewController *)topViewController;
+ (UIWindow *)currentWindow;

@end
