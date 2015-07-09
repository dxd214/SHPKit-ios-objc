//
//  SHPMacros.h
//  
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

//UIColor
#define kCOLOR_RGBA(R, G, B, A)         [UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]
#define kCOLOR_RGB(R, G, B)             kCOLOR_RGBA(R, G, B, 1.f)
#define kCOLOR_RGBA_ALL(R, A)           kCOLOR_RGBA(R, R, R, A)
#define kCOLOR_RGB_ALL(R)               kCOLOR_RGBA_ALL(R, 1.f)
//Pointer
#define BlockWeakObject(o) __typeof(o) __weak
#define BlockWeakSelf BlockWeakObject(self)
#define WEAKSELF typeof(self) __weak weakSelf = self;
//Thread
#define GCDBACK(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
#define GCDMAIN(block) dispatch_async(dispatch_get_main_queue(),block)
//Screen
#define DEVICE_SCREEN_WIDTH     [[UIScreen mainScreen] bounds].size.width
#define DEVICE_SCREEN_HEIGHT    [[UIScreen mainScreen] bounds].size.height
//System
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]
#define IsIOS7 (IOS_VERSION >=7.0 && IOS_VERSION < 8.0)
#define IsIOS8 (IOS_VERSION >=8.0 && IOS_VERSION < 9.0)
//Log
#ifdef DEBUG
#define NSLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#define NSLog(...)
#endif

#ifdef DEBUG
#define ULog(fmt, ...)  { UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%s\n [Line %d] ", __PRETTY_FUNCTION__, __LINE__] message:[NSString stringWithFormat:fmt, ##__VA_ARGS__]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil]; [alert show]; }
#else
#define ULog(...)
#endif
//Resource
#define IMAGE_NAMED(name) [UIImage imageNamed:name]
//Class
#ifndef SINGLETON_GCD
#define SINGLETON_GCD(classname)\
+ (classname *)shared##classname {\
static dispatch_once_t pred;\
__strong static classname * shared##classname = nil;\
dispatch_once( &pred, ^{\
shared##classname = [[self alloc] init]; });\
return shared##classname;\
}
#endif