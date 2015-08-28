//
//  SingleViewController.h
//  单例的写法
//
//  Created by qianfeng001 on 15/8/25.
//  Copyright (c) 2015年 ZhangYunguang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SingleViewController : NSObject

+(instancetype)sharedInstance;



@end
