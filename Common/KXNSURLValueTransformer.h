//
//  KXNSURLValueTransformer.h
//  KaitenExtensions
//
//  Created by David Avendasora on 6/9/12.
//  Copyright (c) 2012 Kaiten, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KXNSURLValueTransformer : NSValueTransformer {
    
}

+ (Class)transformedValueClass;
+ (BOOL)allowsReverseTransformation;
- (id)transformedValue:(id)value;

@end