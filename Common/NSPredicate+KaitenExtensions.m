//  Created by David Avendasora on 12/30/11.
//  Copyright (c) 2011 Kaiten Enterprise Systems. All rights reserved.

#import "NSPredicate+KaitenExtensions.h"

@implementation NSPredicate (KaitenExtensions)

+(NSPredicate *)predicateWithKey:(NSString *)key 
                           value:(id)value
{
    NSPredicate * predicate = [NSPredicate predicateWithFormat:@"%K = %@", key, value];
    return predicate;
}

+ (NSPredicate *)predicateWithSubpredicate:(NSPredicate *)firstPredicate_ 
                           andSubpredicate:(NSPredicate *)secondPredicate_
{
    return [NSCompoundPredicate andPredicateWithSubpredicates:[NSArray arrayWithObjects:firstPredicate_, secondPredicate_, nil]];   
}

+ (NSPredicate *)predicateWithSubpredicate:(NSPredicate *)firstPredicate_ 
                            orSubpredicate:(NSPredicate *)secondPredicate_
{
    return [NSCompoundPredicate orPredicateWithSubpredicates:[NSArray arrayWithObjects:firstPredicate_, secondPredicate_, nil]];   
}

- (NSPredicate *)and:(NSPredicate *)predicate_
{
    return [NSPredicate predicateWithSubpredicate:self 
                                  andSubpredicate:predicate_];
}

- (NSPredicate *)or:(NSPredicate *)predicate_
{
    return [NSPredicate predicateWithSubpredicate:self 
                                   orSubpredicate:predicate_];
}

@end
