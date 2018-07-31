//
//  ViewController.m
//  testDispatchOnce
//
//  Created by rongchen on 2018/7/31.
//  Copyright © 2018年 Yoncn. All rights reserved.
//

#import "ViewController.h"
#import "ManagerOne.h"
#import "ManagerTwo.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refresh) name:ManagerOneRefreshNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(refresh) name:ManagerTwoRefreshNotification object:nil];
    [ManagerOne shareInstance];
}

- (void)refresh {
    NSLog(@"unReadCount:%d", [ManagerOne shareInstance].unReadCount + [ManagerTwo shareInstance].unReadCount);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
