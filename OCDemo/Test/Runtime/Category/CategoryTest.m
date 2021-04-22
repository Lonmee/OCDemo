//
//  CategoryTest.m
//  OCDemo
//
//  Created by Lonmee on 4/22/21.
//

#import "CategoryTest.h"
#import "Person+Child.h"
#import "OCDemo-Swift.h"

@implementation CategoryTest
+(void)test {
    Person * _personA = [[Person alloc] initWithFirstName:@"Lonmee" lastName:@"Hou" sex:YES];
    Person * _personB = [[Person alloc] initWithFirstName:@"Lunar" lastName:@"Zhang" sex:NO];
    
    [_personA code:@"An app" by:@"OC + Swift"];
    [_personA say:@"great weather" to:_personB];
#pragma extension for Person
    [_personA eat];
#pragma Swift extension for NSString
    NSLog([@"1234" withQuotation]);
}
@end
