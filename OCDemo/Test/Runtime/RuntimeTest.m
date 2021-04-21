//
//  RuntimeTest.m
//  OCDemo
//
//  Created by Lonmee on 4/21/21.
//

#import "RuntimeTest.h"

@implementation RuntimeTest
+ (void)test {
    Person * _personA = [[Person alloc] initWithFirstName:@"Lonmee" lastName:@"Hou" sex:YES];
    Person * _personB = [[Person alloc] initWithFirstName:@"Lunar" lastName:@"Zhang" sex:NO];
    
    [_personA say:@"wanna fucing you" to:_personB];
    [_personA seek:_personB look:@"hardly"];
}
@end
