//
//  NSData+Length.m
//  QSUseImageDemo
//
//  Created by zhongpingjiang on 17/4/18.
//  Copyright © 2017年 shaoqing. All rights reserved.
//

#import "NSData+Length.h"

@implementation NSData (Length)

/**
 获取大小描述
 */
- (NSString *)lengthString{
    
    CGFloat length = [self length] * 1.0f;
    //MAC上，文件大小采用的是1000进制换算
    CGFloat scale = 1000.0f;
    
    NSUInteger count = 0;
    NSString *unitDesc;
    
    while ((length/scale) >= 1) {
        length = length / scale;
        count++;
    }
    
    if (count == 0){
        unitDesc = @"B";
    }else if (count == 1){
        unitDesc = @"KB";
    }else if (count == 2) {
        unitDesc = @"MB";
    }else if (count >= 3) {
        unitDesc = @"GB";
    }
    
    NSString *lengthStr = [NSString stringWithFormat:@"%.1lf %@",length,unitDesc];
    return lengthStr;
}

@end
