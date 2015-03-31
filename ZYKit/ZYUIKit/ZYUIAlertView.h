//
//  ZYUIAlertView.h
//  ZYKit-Example
//
//  Created by 刘子洋 on 15/3/31.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZYUIAlertView : NSObject

+ (void)showAlertViewWithText:(NSString *)alertText;
+ (void)showAlertViewWithText:(NSString *)alertText completionBlock:(void(^)())completion;


@end
