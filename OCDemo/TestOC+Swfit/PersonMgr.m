//
//  PersonMgr.m
//  OCDemo
//
//  Created by Lonmee on 4/10/21.
//

#import "PersonMgr.h"
#import "Person.h"

@implementation PersonMgr
+ (NSMutableArray *)getPersons {
    NSMutableArray * persons = [[NSMutableArray alloc] init];
    for (int i = 0; i <= 50; i++) {
        NSString * fn = [[NSString alloc] initWithFormat:@"person%i", i];
        [persons addObject:[[Person alloc] initWithFirstName:fn lastName:@"" sex:i % 2]];
    }
    return persons;
}
@end
