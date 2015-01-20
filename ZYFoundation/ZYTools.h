//
//  ZYTools.h
//  uwu
//
//  Created by LiuZiyang on 15/1/21.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#ifndef uwu_ZYTools_h
#define uwu_ZYTools_h

#endif
//UIColor
#define kCOLOR_RGBA(R, G, B, A)         [UIColor colorWithRed:R/255.f green:G/255.f blue:B/255.f alpha:A]
#define kCOLOR_RGB(R, G, B)             kCOLOR_RGBA(R, G, B, 1.f)
#define kCOLOR_RGBA_ALL(R, A)           kCOLOR_RGBA(R, R, R, A)
#define kCOLOR_RGB_ALL(R)               kCOLOR_RGBA_ALL(R, 1.f)