//
//  ManagerTwo.h
//  testDispatchOnce
//
//  Created by rongchen on 2018/7/31.
//  Copyright © 2018年 Yoncn. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const ManagerTwoRefreshNotification;

@interface ManagerTwo : NSObject

@property (nonatomic, assign) int unReadCount;

+ (ManagerTwo *)shareInstance;
@end
