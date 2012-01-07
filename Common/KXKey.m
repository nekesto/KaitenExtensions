//
//  KXKey.m
//  KaitenExtensions
//
//  Created by David Avendasora on 1/7/12.
//  Copyright (c) 2012 Kaiten Enterprise Systems. All rights reserved.
//

#import "KXKey.h"
#import "NSPredicate+KaitenExtensions.h"

@implementation KXKey

@synthesize key;

- (id)initWithKey:(NSString *)key_
{
    self = [self init];
    [self setKey:key_];    
    return self;
}

- (NSPredicate *)is:(id)value_
{
    return [NSPredicate predicateWithKey:key
                                   value:value_];
}

@end
