//
//  PinLunEntity.m
//  GWFramework
//
//  Created by 郭炜 on 2017/6/1.
//  Copyright © 2017年 郭炜. All rights reserved.
//

#import "PinLunEntity.h"

@implementation PinLunEntity

-(PinLunEntity*)init{
    self=[super init];
    if(self){
        self.keyName = @"wod_id";
    }
    return self;
}

@end
