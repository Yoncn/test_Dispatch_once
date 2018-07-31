//
//  ManagerOne.h
//  testDispatchOnce
//
//  Created by rongchen on 2018/7/31.
//  Copyright © 2018年 Yoncn. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const ManagerOneRefreshNotification;

@interface ManagerOne : NSObject

@property (nonatomic, assign) int unReadCount;

+ (ManagerOne *)shareInstance;
@end
