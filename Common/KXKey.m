#import "KXKey.h"
#import "NSPredicate+KaitenExtensions.h"

@implementation KXKey

@synthesize key;

- (id)initWithKeyPath:(NSString *)keyPath_ {
    self = [self init];
    [self setKey:keyPath_];    
    return self;
}

- (KXKey *)dot:(KXKey *)kxKey_ {
    NSString * key_ = [NSString stringWithFormat:@"%@.%@", self.key, kxKey_.key];
    return [[KXKey alloc] initWithKeyPath:key_];
}

#pragma mark -
#pragma mark NSPredicates

- (NSPredicate *)is:(id)value_ {
    return [NSPredicate predicateWithKey:self.key
                                   value:value_];
}

- (NSPredicate *)contains:(id)value_ {
    return [NSPredicate predicateWithKey:self.key
                           containsValue:value_];
}

@end
