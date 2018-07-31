//
//  ManagerOne.m
//  testDispatchOnce
//
//  Created by rongchen on 2018/7/31.
//  Copyright © 2018年 Yoncn. All rights reserved.
//

#import "ManagerOne.h"

NSString *const ManagerOneRefreshNotification = @"ManagerOneRefreshNotification";

@implementation ManagerOne

+ (ManagerOne *)shareInstance {
    static ManagerOne *shareInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[ManagerOne alloc] init];
    });
    return shareInstance;
}

- (instancetype)init {
    if (self = [super init]) {
        self.unReadCount = 1;
        [[NSNotificationCenter defaultCenter] postNotificationName:ManagerOneRefreshNotification object:nil];
    }
    return self;
}

@end
