//
//  ManagerTwo.m
//  testDispatchOnce
//
//  Created by rongchen on 2018/7/31.
//  Copyright © 2018年 Yoncn. All rights reserved.
//

#import "ManagerTwo.h"

NSString *const ManagerTwoRefreshNotification = @"ManagerTwoRefreshNotification";

@implementation ManagerTwo

+ (ManagerTwo *)shareInstance {
    static ManagerTwo *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[ManagerTwo alloc] init];
    });
    return shareInstance;
}

- (instancetype)init {
    if (self = [super init]) {
        self.unReadCount = 2;
        [[NSNotificationCenter defaultCenter] postNotificationName:ManagerTwoRefreshNotification object:nil];
    }
    return self;
}

@end
