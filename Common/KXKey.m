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

#pragma mark -
#pragma mark NSPredicates

- (NSPredicate *)is:(id)value_
{
    return [NSPredicate predicateWithKey:key
                                   value:value_];
}

@end
