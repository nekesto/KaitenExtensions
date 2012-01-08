//  Created by David Avendasora on 12/30/11.
//  Copyright (c) 2011 Kaiten Enterprise Systems. All rights reserved.

@interface NSPredicate (KaitenExtensions)

+ (NSPredicate *)predicateWithKey:(NSString *)key value:(id)value;

+ (NSPredicate *)predicateWithSubpredicate:(NSPredicate *)firstPredicate_
                           andSubpredicate:(NSPredicate *)secondPredicate_;

+ (NSPredicate *)predicateWithSubpredicate:(NSPredicate *)firstPredicate_
                            orSubpredicate:(NSPredicate *)secondPredicate_;

- (NSPredicate *)and:(NSPredicate *)predicate_;
- (NSPredicate *)or:(NSPredicate *)predicate_;

@end
