//
//  UIViewController+ZYTools.h
//  uwu
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "ZYUIKit.h"

@interface UIViewController (ZYTools)

/**
 * @brief 退出当前视图
 *
 * 如果当前在UINavigationController中则pop，否则dismiss
 */
- (void)pop;

/**
 * @brief 退出当前视图
 *
 * 直接dismiss
 */
- (void)dismiss;

@end
