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

- (NSPredicate *)and:(NSPredicate *)predicate_
{
    NSArray * predicates = [NSArray arrayWithObjects:self, predicate_, nil];
    return [NSCompoundPredicate andPredicateWithSubpredicates:predicates];
}

@end
