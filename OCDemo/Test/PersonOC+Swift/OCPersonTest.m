//
//  OCPersonTest.m
//  OCDemo
//
//  Created by Lonmee on 4/8/21.
//

#import "OCPersonTest.h"
@implementation OCPersonTest

+ (void)test {
    NSLog(@"Here is the test from OC~~~~");
    Person * _personA = [[Person alloc] initWithFirstName:@"Lonmee" lastName:@"Hou" sex:YES];
    Person * _personB = [[Person alloc] initWithFirstName:@"Lunar" lastName:@"Zhang" sex:NO];
    
    [_personA say:@"hello" to:_personB];
    
    [Person talk:@"hi" with:_personA];
    
    Person * child = [Person initWithFirstName:@"Child" lastName:@"Hou" sex:YES];
    [child say:@"momy" to:_personB];
    [_personB say:@"hey baby" to:child];
    
    Person2 * swiftPersonA = [[Person2 alloc] initWithFirstName:@"swiftPersonA" secondName:@"Swift" sex:NO];
    Person2 * swiftPersonB = [[Person2 alloc] initWithFirstName:@"swiftPersonB" secondName:@"Swift" sex:YES];
    [swiftPersonA talkWithWord:@"soso" to:swiftPersonB];
}

@end
