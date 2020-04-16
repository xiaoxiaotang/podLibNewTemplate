//
//  XZHomeConfig.m
//  Pods-ios-shell-tuofu
//
//  Created by 小站 on 2020/4/3.
//

#import "XZHomeConfig.h"
#import "XZHomeViewController.h"

@implementation XZHomeConfig

+ (void)registerModuleConfig {
    [self registerRouterClass];
    [self registerProtocolClass];
}

+ (void)registerRouterClass {
    NSArray *datas = @[
                       @[XZHomeViewController.class, @protocol(XZHomeRouterProtocol)]
                       ];
    for (NSArray *ary in datas) {
        if ([ary.lastObject isKindOfClass:[NSString class]]) {
            [[XZClassProtocolMediator defaultContext] registerRouterClass:ary.firstObject forKey:ary.lastObject];
        } else {
            [[XZClassProtocolMediator defaultContext] registerRouterClass:ary.firstObject forProtocolKey:ary.lastObject];
        }
    }
}

+ (void)registerProtocolClass {
    NSArray *datas = @[];
    for (NSArray *ary in datas) {
        [[XZClassProtocolMediator defaultContext] registerProtocolClass:ary.firstObject forKey:ary.lastObject];
    }
}

@end
