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

@interface ZYUIAlertView() <UIAlertViewDelegate>
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
//    [self showAlertViewWithText:alertText
//                completionBlock:^(){
//                }];
}

+ (void)showAlertViewWithTitle:(NSString *)title Text:(NSString *)alertText{
    [self showAlertViewWithTitle:title
                            text:alertText
                 completionBlock:^(NSInteger selectedIndex) {
                     
                 }];
}

+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText completionBlock:(void (^)())completionBlock{
//    [self showAlertViewWithText:alertText
//                   buttonTitles:@[@"确定"]
//                completionBlock:^(NSInteger selectedIndex) {
//                    completionBlock();
//                }];
    [self showAlertViewWithTitle:title
                            text:alertText
                    buttonTitles:@[@"确定"]
                 completionBlock:^(NSInteger selectedIndex) {
                     completionBlock();
                 }];
}

+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles completionBlock:(void (^)(NSInteger))completionBlock{
    [self showAlertViewWithTitle:title
                            text:alertText
                    buttonTitles:buttonTitles
                 withCancelTitle:nil
                 completionBlock:completionBlock
                     cancelBlock:^{
                     }];
    
}

+ (void)showAlertViewWithTitle:(NSString *)title text:(NSString *)alertText buttonTitles:(NSArray *)buttonTitles withCancelTitle:(NSString *)cancelTitle completionBlock:(void (^)(NSInteger))completionBlock cancelBlock:(void (^)())cancelBlock{
    ZYUIAlertView *sharedAlertView = [self sharedAlertView];
    sharedAlertView.completionBlock = ^(NSInteger selectedIndex){
        if (selectedIndex >= buttonTitles.count){
            cancelBlock();
        }else{
            completionBlock(selectedIndex);
        }
    };
    sharedAlertView.cancelBlock = ^(){
        cancelBlock();
    };
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title
                                                        message:alertText
                                                       delegate:sharedAlertView
                                              cancelButtonTitle:nil
                                              otherButtonTitles:nil];
    for (NSString *buttonTitle in buttonTitles){
        if (!buttonTitle.length){
            continue;
        }
        [alertView addButtonWithTitle:buttonTitle];
    }
    if (cancelTitle.length){
        [alertView addButtonWithTitle:cancelTitle];
    }
    [alertView show];
}

#pragma mark - UIAlertView delegate

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    self.completionBlock(buttonIndex);
}

- (void)alertViewCancel:(UIAlertView *)alertView{
    self.cancelBlock();
}

@end
