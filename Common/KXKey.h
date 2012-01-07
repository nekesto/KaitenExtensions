#import <Foundation/Foundation.h>

@interface KXKey : NSObject{
    
}

@property (readonly, strong, nonatomic) NSString *key;

- (id)initWithKey:(NSString *)key_;

- (NSPredicate *)is:(id)value_;

@end
