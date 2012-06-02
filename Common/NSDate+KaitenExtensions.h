//
//  KXDate.h
//  KaitenExtensions
//
//  Created by David Avendasora on 6/2/12.
//  Copyright (c) 2012 Kaiten, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (KaitenExtensions)

+ (NSTimeInterval)week;
+ (NSTimeInterval)weeks:(double)weeks_;
+ (NSTimeInterval)day;
+ (NSTimeInterval)days:(double)days_;
+ (NSTimeInterval)hour;
+ (NSTimeInterval)hours:(double)hours_;
+ (NSTimeInterval)minute;
+ (NSTimeInterval)minutes:(double)minutes_;

- (NSString *)localizedTimestampShort;
- (NSString *)localizedTimestampMedium;

@end
