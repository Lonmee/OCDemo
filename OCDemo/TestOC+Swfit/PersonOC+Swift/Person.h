//
//  Person.h
//  OCDemo
//
//  Created by Lonmee on 4/7/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property int yearOfBirth;
@property (readonly) NSString * firstName;
@property (readonly) NSString * lastName;

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName sex:(bool)sex;
+ (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName sex:(bool)sex;
- (void)say:(NSString *)word to:(Person *)person;
+ (void)talk:(NSString *)word with:(Person *)person;

@end

NS_ASSUME_NONNULL_END
