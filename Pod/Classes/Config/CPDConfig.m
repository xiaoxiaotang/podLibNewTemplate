//
//  CPDConfig.m
//  PROJECT
//
//  Created by PROJECT_OWNER on TODAYS_DATE.
//  Copyright (c) TODAYS_YEAR PROJECT_OWNER. All rights reserved.
//

#import "CPDConfig.h"
#import "CPDViewController.h"

@implementation CPDConfig

+ (void)registerModuleConfig {
    [self registerRouterClass];
    [self registerProtocolClass];
}

+ (void)registerRouterClass {
//    NSArray *datas = @[
//                       @[CPDViewController.class, @protocol(CPDRouterProtocol)]
//                       ];
//    for (NSArray *ary in datas) {
//        if ([ary.lastObject isKindOfClass:[NSString class]]) {
//            [[XZClassProtocolMediator defaultContext] registerRouterClass:ary.firstObject forKey:ary.lastObject];
//        } else {
//            [[XZClassProtocolMediator defaultContext] registerRouterClass:ary.firstObject forProtocolKey:ary.lastObject];
//        }
//    }
}

+ (void)registerProtocolClass {
//    NSArray *datas = @[];
//    for (NSArray *ary in datas) {
//        [[XZClassProtocolMediator defaultContext] registerProtocolClass:ary.firstObject forKey:ary.lastObject];
//    }
}

@end
