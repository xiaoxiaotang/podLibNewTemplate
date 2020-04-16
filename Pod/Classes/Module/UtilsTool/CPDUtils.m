//
//  CPDUtils.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDUtils.h"

static NSString *const CPDBundleName = @"CPD.bundle";

@implementation CPDUtils

+ (UIImage *)imageNamed:(NSString *)imageName {
    NSString *currentBundleStr = [[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:CPDBundleName];
    return [UIImage imageNamed:imageName inBundle:[NSBundle bundleWithPath:currentBundleStr]?:[NSBundle mainBundle] compatibleWithTraitCollection:nil];
}

@end
