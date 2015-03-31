//
//  UWUUIDHelper.h
//  
//
//  Created by LiuZiyang on 14/12/3.
//  Copyright (c) 2014年 Yicheng Tech. All rights reserved.
//

#import "ZYFoundation.h"
//Device
#define DEVICE_LIKE_IPHONE_4S           ([[UIScreen mainScreen] bounds].size.height <= 480)
#define DEVICE_LIKE_IPHONE_5            (([[UIScreen mainScreen] bounds].size.height > 480) && ([[UIScreen mainScreen] bounds].size.height <= 568))
#define DEVICE_LIKE_IPHONE_6            (([[UIScreen mainScreen] bounds].size.height > 568) && ([[UIScreen mainScreen] bounds].size.height <= 667))
#define DEVICE_LIKE_IPHONE_6PLUS        ([[UIScreen mainScreen] bounds].size.height > 667)

@interface ZYDeviceHelper : NSObject

+ (NSString *)uuid;

@end
