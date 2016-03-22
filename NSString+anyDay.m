//
//  NSString+anyDay.m
//  未名管家
//
//  Created by apple on 15/11/19.
//  Copyright (c) 2015年 eight. All rights reserved.
//

#import "NSString+anyDay.h"

@implementation NSString (anyDay)
//返回之后N天的日期和星期
+ (NSString *)stringWithDaysInterval:(int)whichDay {
    int dis = whichDay;
    
    NSDate *nowDate = [NSDate date];
    NSDate *theDate;
    
    NSTimeInterval oneDay = 24*60*60*1;  //1天的长度
    if(dis!=0)
    {
        theDate = [nowDate initWithTimeIntervalSinceNow: +oneDay*dis ];
        //or
        theDate = [nowDate initWithTimeIntervalSinceNow: -oneDay*dis ];
    }
    else
    {
        theDate = nowDate;
    }
    
    theDate = [nowDate initWithTimeIntervalSinceNow: + oneDay*dis];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"MM-dd";
    NSString *weekStr1 = [NSString stringWeekFromDate:theDate];
    NSString *nowStr1 = [formatter stringFromDate:theDate];
    return [NSString stringWithFormat:@"%@%@",nowStr1,weekStr1];
}
//根据输入的日期判断是周几
+ (NSString*)stringWeekFromDate:(NSDate*)inputDate {
    
    NSArray *weekdays = [NSArray arrayWithObjects: [NSNull null], @" (日)", @" (一)", @" (二)", @" (三)", @" (四)", @" (五)", @" (六)", nil];
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:inputDate];
    
    return [weekdays objectAtIndex:theComponents.weekday];
    
}
//返回年份
+ (NSString *)stringOfYearWithDaysInterval:(int)whichDay {
    int dis = whichDay;
    
    NSDate *nowDate = [NSDate date];
    NSDate *theDate;
    
    NSTimeInterval oneDay = 24*60*60*1;  //1天的长度
    if(dis!=0)
    {
        theDate = [nowDate initWithTimeIntervalSinceNow: +oneDay*dis ];
        //or
        theDate = [nowDate initWithTimeIntervalSinceNow: -oneDay*dis ];
    }
    else
    {
        theDate = nowDate;
    }
    
    theDate = [nowDate initWithTimeIntervalSinceNow: + oneDay*dis];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy";
    NSString *nowYear = [formatter stringFromDate:theDate];
    return [NSString stringWithFormat:@"%@",nowYear];
}

@end
