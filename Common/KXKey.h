#import <Foundation/Foundation.h>

@interface KXKey : NSObject{
    
}

@property (readonly, strong, nonatomic) NSString *key;

- (id)initWithKey:(NSString *)key_;

#pragma mark -
#pragma mark NSPreicates

- (NSPredicate *)is:(id)value_;

@end
