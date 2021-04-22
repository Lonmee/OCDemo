//
//  Person+Work.h
//  OCDemo
//
//  Created by Lonmee on 4/22/21.
//

#import <objc/runtime.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person (Work)
@property NSString *duty;
-(void)code:(NSString *)content by:(NSString *)program;
-(void)say:(NSString *)content to:(Person *)person;
@end

NS_ASSUME_NONNULL_END
