//
//  UIWindow+ZYTools.m
//  
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "UIWindow+ZYTools.h"

@implementation UIWindow (ZYTools)

#pragma mark - private

+ (UIViewController *) getVisibleViewControllerFrom:(UIViewController *) vc {
    if ([vc isKindOfClass:[UINavigationController class]]) {
        return [UIWindow getVisibleViewControllerFrom:[((UINavigationController *) vc) visibleViewController]];
    } else if ([vc isKindOfClass:[UITabBarController class]]) {
        return [UIWindow getVisibleViewControllerFrom:[((UITabBarController *) vc) selectedViewController]];
    } else {
        if (vc.presentedViewController) {
            return [UIWindow getVisibleViewControllerFrom:vc.presentedViewController];
        } else {
            return vc;
        }
    }
}

#pragma mark - public
#pragma mark instance method
- (UIViewController *)topViewController{
    UIViewController *rootViewController = self.rootViewController;
    return [UIWindow getVisibleViewControllerFrom:rootViewController];
}
#pragma mark class method
+ (UIViewController *)topViewController{
    return [[self currentWindow] topViewController];
}
+ (UIWindow *)currentWindow{
    return [[[UIApplication sharedApplication] delegate] window];
}

@end
