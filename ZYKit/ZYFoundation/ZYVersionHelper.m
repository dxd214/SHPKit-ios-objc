//
//  UWVersionHelper.m
//  uwu
//
//  Created by LiuZiyang on 15/1/4.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "ZYVersionHelper.h"

@implementation ZYVersionHelper

+ (NSString *)currentVersion{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

@end
