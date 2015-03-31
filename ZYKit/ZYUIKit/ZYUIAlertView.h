//
//  ZYUIAlertView.h
//  ZYKit-Example
//
//  Created by 刘子洋 on 15/3/31.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "ZYUIKit.h"

@interface ZYUIAlertView : NSObject

/**
 * 显示一个文字提示，只包含默认的确定按钮
 */
+ (void)showAlertViewWithText:(NSString *)alertText;

/**
 * 显示一个文字提示，只包含默认的确定按钮，自定义标题
 */
+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText;

/**
 * 显示一个文字提示，包含默认的确定按钮，通过completionBlock回调点击事件
 */
+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText completionBlock:(void(^)())completionBlock;

/**
 * 显示一个文字提示，包含可选的按钮标题，不包含取消按钮，通过completionBlock回调点击事件
 */
+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles completionBlock:(void(^)(NSInteger selectedIndex))completionBlock;

/**
 * 显示一个文字提示，包含可选的按钮标题，和自定义的取消按钮标题，通过completionBlock和cancelBlock回调点击事件和取消事件
 */
+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles withCancelTitle:(NSString *)cancelTitle completionBlock:(void(^)(NSInteger selectedIndex))completionBlock cancelBlock:(void(^)())cancelBlock;


@end
