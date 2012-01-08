#import <Foundation/Foundation.h>

@interface KXKey : NSObject{
    
}

@property (strong, nonatomic) NSString * key;

- (id)initWithKeyPath:(NSString *)keyPath_;
- (KXKey *)dot:(KXKey *)kxKey_;

#pragma mark -
#pragma mark NSPreicates

- (NSPredicate *)is:(id)value_;


@end
