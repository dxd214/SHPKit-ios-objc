//
//  UWImagePickerHelper.h
//  
//
//  Created by LiuZiyang on 15/1/19.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "SHPUIKit.h"

typedef enum{
    SHPUIImagePickerTypeCamera,
    SHPUIImagePickerTypePhoto,
} SHPUIImagePickerType;

@interface SHPUIImagePicker : NSObject

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type
           fromViewController:(UIViewController *)viewController
                      success:(void(^)(UIImage *image))success;

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type
           fromViewController:(UIViewController *)viewController
                      success:(void (^)(UIImage *))success
                  autoDismiss:(BOOL)autoDismiss;

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type
           fromViewController:(UIViewController *)viewController
                      success:(void (^)(UIImage *))success
                  autoDismiss:(BOOL)autoDismiss
                 allowEditing:(BOOL)allowEditing;

@end
