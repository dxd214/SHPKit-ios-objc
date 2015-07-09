//
//  UIWindow+SHPTools.h
//  
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "SHPUIKit.h"

@interface UIWindow (SHPTools)

/**
 * 获取最上层的UIViewController
 * @return topViewController 最上层的UIViewController
 */
- (UIViewController *)topViewController;

/**
 * 获取最上层的UIViewController
 * @return topViewController 最上层的UIViewController
 */
+ (UIViewController *)topViewController;

/**
 * 获取当前的UIWindow
 * @return currentWindow 当前使用的UIWindow
 */
+ (UIWindow *)currentWindow;

@end
