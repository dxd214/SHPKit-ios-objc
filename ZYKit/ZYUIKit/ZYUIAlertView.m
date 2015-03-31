//
//  ZYUIAlertView.m
//  ZYKit-Example
//
//  Created by 刘子洋 on 15/3/31.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "ZYUIAlertView.h"

typedef void(^EmptyCompletionBlock)();
typedef void(^CompletionBlock)(NSInteger selectedIndex);
typedef void(^cancelBlock)();

@interface ZYUIAlertView()

@end

@implementation ZYUIAlertView

+ (void)showAlertViewWithText:(NSString *)alertText{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"提示"
                                                        message:alertText
                                                       delegate:nil
                                              cancelButtonTitle:@"确定"
                                              otherButtonTitles:nil];
    [alertView show];
}

+ (void)showAlertViewWithText:(NSString *)alertText completionBlock:(void (^)())completionBlock{

}

+ (void)showAlertViewWithText:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles completionBlock:(void (^)(NSInteger))completionBlock{

}

+ (void)showAlertViewWithText:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles withCancelTitle:(NSString *)cancelTitle completionBlock:(void (^)(NSInteger))completionBlock cancelBlock:(void (^)())cancelBlock{
    
}

@end
