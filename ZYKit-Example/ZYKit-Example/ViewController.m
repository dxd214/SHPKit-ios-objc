//
//  ViewController.m
//  ZYKit-Example
//
//  Created by 刘子洋 on 15/3/31.
//  Copyright (c) 2015年 刘子洋. All rights reserved.
//

#import "ViewController.h"
#import "ZYUIKit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)alertViewButtonPressed:(id)sender {
    [ZYUIAlertView showAlertViewWithText:@"hi"];
//    [ZYUIAlertView showAlertViewWithText:@"hi" buttonTitles:@[@"你好", @"hi"] completionBlock:^(NSInteger selectedIndex) {
//        NSLog(@"%zd", selectedIndex);
//    }];
}

@end
