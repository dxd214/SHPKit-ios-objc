//
//  SHPDeviceHelper.m
//  
//
//  Created by LiuZiyang on 14/12/3.
//  Copyright (c) 2014年 Yicheng Tech. All rights reserved.
//

#import "SHPDeviceHelper.h"

static NSString *const kApplicationUUIDKey = @"APPLICATION_UUID";

@implementation SHPDeviceHelper

+ (NSString *)uuid{
    NSString *UUID = [[NSUserDefaults standardUserDefaults] objectForKey:kApplicationUUIDKey];
    if (!UUID) {
        CFUUIDRef uuid = CFUUIDCreate(NULL);
        UUID = (__bridge_transfer NSString *)CFUUIDCreateString(NULL, uuid);
        CFRelease(uuid);
        [[NSUserDefaults standardUserDefaults] setObject:UUID forKey:kApplicationUUIDKey];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    return UUID;
}

@end
