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
    
    [_personA say:@"missing you" to:_personB];
    [_personA seek:_personB look:@"anxiously"];
    [_personA invite:_personB look:@"sincerely"];
    [_personA wandering:@"in snow" with:_personB];
//    [_personA leave:_personB for:@"finally"];
}
@end
