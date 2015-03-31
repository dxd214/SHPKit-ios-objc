//
//  ZYUIAlertView.m
//  ZYKit-Example
//
//  Created by 刘子洋 on 15/3/31.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "ZYUIAlertView.h"

typedef void(^CompletionBlock)(NSInteger selectedIndex);
typedef void(^CancelBlock)();

@interface ZYUIAlertView()
@property (strong, nonatomic) CompletionBlock completionBlock;
@property (strong, nonatomic) CancelBlock cancelBlock;
@end

@implementation ZYUIAlertView

+ (id)sharedAlertView {
    static ZYUIAlertView *_sharedAlertView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedAlertView = [[self alloc] init];
    });
    return _sharedAlertView;
}

+ (void)showAlertViewWithText:(NSString *)alertText{
    [self showAlertViewWithText:alertText completionBlock:nil];
}

+ (void)showAlertViewWithText:(NSString *)alertText completionBlock:(void (^)())completionBlock{
    [self showAlertViewWithText:alertText buttonTitles:@[@"确定"] completionBlock:^(NSInteger selectedIndex) {
        completionBlock();
    }];
}

+ (void)showAlertViewWithText:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles completionBlock:(void (^)(NSInteger))completionBlock{
    
}

+ (void)showAlertViewWithText:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles withCancelTitle:(NSString *)cancelTitle completionBlock:(void (^)(NSInteger))completionBlock cancelBlock:(void (^)())cancelBlock{
    ZYUIAlertView *sharedAlertView = [self sharedAlertView];
    sharedAlertView.completionBlock = ^(NSInteger selectedIndex){
        completionBlock(selectedIndex);
    };
    sharedAlertView.cancelBlock = ^(){
        cancelBlock();
    };
    
}

@end
