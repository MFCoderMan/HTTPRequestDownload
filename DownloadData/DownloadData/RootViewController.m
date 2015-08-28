//
//  RootViewController.m
//  DownloadData
//
//  Created by qianfeng001 on 15/8/19.
//  Copyright (c) 2015年 ZhangYunguang. All rights reserved.
//

#import "RootViewController.h"
#import "ZYGHttpRequest.h"

#define kURL @"http://m.api.huxiu.com/portal/1/1?client_ver=6&platform=Android&mid=86284502808357"

@interface RootViewController ()
{
    ZYGHttpRequest *_httpRequest;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createRequest];
    [self download];
}
//创建下载对象
-(void)createRequest{
    _httpRequest = [[ZYGHttpRequest alloc] init];
}
//下载数据
-(void)download{
    
   // __weak typeof(self)weakSelf = self;
    [_httpRequest downloadDataWithUrl:kURL success:^(NSMutableData *download) {
        NSLog(@"下载成功");
        if (download) {
            NSLog(@"%@",download);
        }
    } failed:^(NSError *error) {
        NSLog(@"下载失败");
    }];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
