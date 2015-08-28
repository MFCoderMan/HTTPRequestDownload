//
//  SingleViewController.m
//  单例的写法
//
//  Created by qianfeng001 on 15/8/25.
//  Copyright (c) 2015年 ZhangYunguang. All rights reserved.
//

#import "SingleViewController.h"

@implementation SingleViewController

#if 0
//非标准单例
+(instancetype)sharedInstance{
    static SingleViewController *singel = nil;
    @synchronized(self){
        if (singel == nil) {
            singel = [[self alloc] init];
        }
    }
    return singel;
}

#else
//标准单例
static SingleViewController *singe = nil;
+(instancetype)sharedInstance{
    @synchronized (self) {
        if (singe == nil) {
            singe = [[self alloc] init];
        }
    }
    return singe;
}

+(id)allocWithZone:(struct _NSZone *)zone{
    @synchronized (self){
        if (singe == nil) {
            singe = [super allocWithZone:zone];
            return singe;
        }
    }
    return singe;
}

-(id)copyWithZone{
    return self;
}

#endif


@end
