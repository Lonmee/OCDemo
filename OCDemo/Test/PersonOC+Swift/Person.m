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

-(void)eat {
    NSLog(@"Am eating");
}

void seek(id self, SEL _cmd, Person *person, NSString *present) {
    NSLog(@"%@ seeking %@ %@", [self firstName], person.firstName, present);
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    NSString * methodName = NSStringFromSelector(sel);
    NSLog(@"\"%@\" called @runtime in \"resolveInstanceMethod\"", methodName);
    if ([methodName isEqualToString:@"seek:look:"]) {
        return class_addMethod(self, sel, (IMP)seek, "v@:");
    }
    return NO;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSString * methodName = NSStringFromSelector(aSelector);
    NSLog(@"\"%@\" called @runtime in \"forwardingTargetForSelector\"", methodName);
    if ([methodName isEqualToString:@"invite:look:"]) {
        return [[Person2 alloc]initWithFirstName:@"Agent" secondName:@"runtime" sex:NO];
    }
    return [super forwardingTargetForSelector:aSelector];
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSString * methodName = NSStringFromSelector(aSelector);
    NSLog(@"\"%@\" called @runtime in \"methodSignatureForSelector\"", methodName);
    if ([methodName isEqualToString:@"wandering:with:"]) {
        return [NSMethodSignature signatureWithObjCTypes:"v@:"];
    }
    return [super methodSignatureForSelector:aSelector];
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    SEL sel = anInvocation.selector;
    NSString * methodName = NSStringFromSelector(sel);
    NSLog(@"\"%@\" called @runtime in \"forwardInvocation\"", methodName);
    Person2 *person2 = [[Person2 alloc]initWithFirstName:@"Agent2" secondName:@"runtime" sex:NO];
    if ([person2 respondsToSelector:sel]) {
        NSLog(@"\"%@\" test responds @runtime in \"forwardInvocation\"", methodName);
        [anInvocation invokeWithTarget:person2];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

- (void)doesNotRecognizeSelector:(SEL)aSelector{
    NSString * methodName = NSStringFromSelector(aSelector);
    NSLog(@"\"%@\" called @runtime in \"doesNotRecognizeSelector\"", methodName);
}

@end
