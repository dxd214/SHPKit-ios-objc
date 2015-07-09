//
//  UWImagePickerHelper.m
//  
//
//  Created by LiuZiyang on 15/1/19.
//  Copyright (c) 2015年 Yicheng Tech. All rights reserved.
//

#import "SHPUIImagePicker.h"

typedef void(^SuccessBlock)(UIImage *image);

@interface SHPUIImagePicker () <UIImagePickerControllerDelegate>

@property (strong, nonatomic) SuccessBlock successBlock;
@property (strong, nonatomic) UIImagePickerController *pickerController;
@property (assign, nonatomic) BOOL autoDismiss; //default: YES
@property (assign, nonatomic) BOOL allowEditing; //default: YES
@end

@implementation SHPUIImagePicker

- (id)init{
    self = [super init];
    if (self){
    }
    return self;
}

+ (id)sharedPicker {
    static SHPUIImagePicker *_sharedPicker = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedPicker = [[self alloc] init];
    });
    return _sharedPicker;
}

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type fromViewController:(UIViewController *)viewController success:(void (^)(UIImage *))success{
    [self showImagePickerOfType:type
             fromViewController:viewController
                        success:success
                    autoDismiss:YES];
}

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type fromViewController:(UIViewController *)viewController success:(void (^)(UIImage *))success autoDismiss:(BOOL)autoDismiss{
    [self showImagePickerOfType:type
             fromViewController:viewController
                        success:success
                    autoDismiss:autoDismiss
                   allowEditing:YES];
}

+ (void)showImagePickerOfType:(SHPUIImagePickerType)type
           fromViewController:(UIViewController *)viewController
                      success:(void (^)(UIImage *))success
                  autoDismiss:(BOOL)autoDismiss
                 allowEditing:(BOOL)allowEditing{
    SHPUIImagePicker *sharedHelper = [self sharedPicker];
    sharedHelper.successBlock = ^(UIImage *image){
        success(image);
    };
    sharedHelper.pickerController = [[UIImagePickerController alloc] init];
    [sharedHelper.pickerController setSourceType:type == SHPUIImagePickerTypeCamera ?UIImagePickerControllerSourceTypeCamera:UIImagePickerControllerSourceTypePhotoLibrary];
    sharedHelper.autoDismiss = autoDismiss;
    [sharedHelper.pickerController setAllowsEditing:allowEditing];
    [sharedHelper.pickerController setDelegate:[self sharedPicker]];
    [viewController presentViewController:sharedHelper.pickerController animated:YES completion:NULL];
}

#pragma mark - UIImagePicker delegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    UIImage *theImage = nil;
    if ([picker allowsEditing]){
        theImage = [info objectForKey:UIImagePickerControllerEditedImage];
    } else {
        theImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    }
    self.successBlock(theImage);
    if (_autoDismiss){
        [self.pickerController dismissViewControllerAnimated:YES completion:NULL];
    }
    self.pickerController = nil;
}

@end
