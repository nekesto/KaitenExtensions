//
//  KXKey.h
//  KaitenExtensions
//
//  Created by David Avendasora on 1/7/12.
//  Copyright (c) 2012 Kaiten Enterprise Systems. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KXKey : NSObject{
    
}

@property (readonly, strong, nonatomic) NSString *key;

- (id)initWithKey:(NSString *)key_;

- (NSPredicate *)is:(id)value_;

@end
