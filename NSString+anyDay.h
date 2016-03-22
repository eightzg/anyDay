//
//  NSString+anyDay.h
//  未名管家
//
//  Created by apple on 15/11/19.
//  Copyright (c) 2015年 eight. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (anyDay)
//返回之后N天的日期和星期
+ (NSString *)stringWithDaysInterval:(int)whichDay;
//根据输入的日期判断是周几
+ (NSString*)stringWeekFromDate:(NSDate*)inputDate;
//返回年份
+ (NSString *)stringOfYearWithDaysInterval:(int)whichDay;

@end
