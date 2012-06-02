//
//  KXDate.m
//  KaitenExtensions
//
//  Created by David Avendasora on 6/2/12.
//  Copyright (c) 2012 Kaiten, Inc. All rights reserved.
//

#import "NSDate+KaitenExtensions.h"

@implementation NSDate (KaitenExtensions)

+ (NSTimeInterval) minute {
    NSTimeInterval interval = 60;
    return interval;
}

+ (NSTimeInterval)minutes:(double)minutes_ {
    NSTimeInterval interval = minutes_ * [self minute];
    return interval;
}

+ (NSTimeInterval) hour {
    NSTimeInterval interval =  [self minute] * 60;
    return interval;
}

+ (NSTimeInterval)hours:(double)hours_ {
    NSTimeInterval interval = hours_ * [self hour];
    return interval;
}

+ (NSTimeInterval) day {
    NSTimeInterval interval =  [self hour] * 24;
    return interval;
}

+ (NSTimeInterval)days:(double)days_ {
    NSTimeInterval interval = days_ * [self day];
    return interval;
}

+ (NSTimeInterval) week {
    NSTimeInterval interval =  [self day] * 7;
    return interval;
}

+ (NSTimeInterval)weeks:(double)weeks_ {
    NSTimeInterval interval = weeks_ * [self week];
    return interval;
}

- (NSString *)localizedTimestampShort {
    NSString * localizedString_ = [NSDateFormatter localizedStringFromDate:self
                                                                 dateStyle:NSDateFormatterShortStyle
                                                                 timeStyle:NSDateFormatterShortStyle];
    return localizedString_;    
}

-(NSString *)localizedTimestampMedium {
    NSString * localizedString_ = [NSDateFormatter localizedStringFromDate:self
                                                                 dateStyle:NSDateFormatterMediumStyle
                                                                 timeStyle:NSDateFormatterMediumStyle];
    return localizedString_;
}

@end
