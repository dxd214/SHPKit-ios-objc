//
//  UIViewController+SHPTools.m
//  
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "UIViewController+SHPTools.h"

@implementation UIViewController (SHPTools)

- (void)pop{
    if (!self.navigationController){
        [self dismiss];
        return;
    }
    NSInteger index = [self.navigationController.viewControllers indexOfObject:self];
    if (index){
        [self dismiss];
    }else{
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (void)dismiss{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
