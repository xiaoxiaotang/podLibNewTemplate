//
//  XZHomeModuleUtils.m
//  Pods-ios-shell-tuofu
//
//  Created by 小站 on 2020/4/3.
//

#import "XZHomeModuleUtils.h"
#import <CMUtils/XZConstant.h>

static NSString *const xzHomeModuleBundleName = @"XZHomeModule.bundle";

@implementation XZHomeModuleUtils

+ (UIImage *)xz_imageNamed:(NSString *)imageName {
    return [UIImage xz_imageNamed:imageName bundleName:xzHomeModuleBundleName];
}

@end
