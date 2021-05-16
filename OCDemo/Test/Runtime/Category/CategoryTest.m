//
//  CategoryTest.m
//  OCDemo
//
//  Created by Lonmee on 4/22/21.
//

#import "CategoryTest.h"

@implementation CategoryTest
+(void)test {
    Person * _personA = [[Person alloc] initWithFirstName:@"Lonmee" lastName:@"Hou" sex:YES];
    Person * _personB = [[Person alloc] initWithFirstName:@"Lunar" lastName:@"Zhang" sex:NO];
    
#pragma dynamic propery in catagory @ runtime
    _personA.duty = @"coder";
    NSLog(@"%@", _personA.duty);
#pragma method append to the list of method in category @ runtime
    [_personA code:@"An app" by:@"OC + Swift"];
    [_personA say:@"great weather" to:_personB];
#pragma extension for Person
    [_personA eat];
#pragma Swift extension for NSString
    NSLog(@"%@", [@"with quotation from extension in Swift for NSString" withQuotation]);
#pragma properties list @ runtime
    uint varCount;
    Ivar *ivars = class_copyIvarList(Person.class, &varCount);
    for (int i = 0; i < varCount; i++) {
        Ivar ivar = ivars[i];
        const char *name = ivar_getName(ivar);
        const char *type = ivar_getTypeEncoding(ivar);
        NSLog(@"Person property %s type: %s", name, type);
    }
    free(ivars);
}

@end
