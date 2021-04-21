//
//  Person.m
//  OCDemo
//
//  Created by Lonmee on 4/7/21.
//

#import "Person.h"
#import "OCDemo-Swift.h"

@implementation Person {
    bool _sex;
}

- (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName sex:(bool)sex
{
    self = [super init];
    if (self) {
        _firstName = firstName;
        _lastName = lastName;
        _sex = sex;
    }
    return self;
}

+ (instancetype)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName sex:(bool)sex
{
    Person * p = [[Person alloc] initWithFirstName:firstName lastName:lastName sex:sex];
    return p;
}

- (void)say:(NSString *)word to:(Person *)person {
    NSLog(@"%@ %@ saying \"%@\" to %@", self.firstName, _sex?@"👱‍♂️":@"👩‍🦰", word, person.firstName);
    NSLog(@"from private method calc: 5 + 6 = %i", [self calc:5 and:6]);
}

+ (void)talk:(NSString *)word with:(Person *)person {
    NSLog(@"god talking \"%@\" to %@", word, person.firstName);
}

- (int)calc:(int)a and:(int)b {
    return a + b;
}

void seek(id self, SEL _cmd, Person *person, NSString *present) {
    NSLog(@"%@ seeking %@ %@", [self firstName], person.firstName, present);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString * methodName = NSStringFromSelector(sel);
    NSLog(@"%@", methodName);
    if ([methodName isEqualToString:@"seek:look:"]) {
        return class_addMethod(self, sel, (IMP)seek, "v@:");
    }
    return NO;
}

@end
