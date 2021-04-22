//
//  Person+Work.m
//  OCDemo
//
//  Created by Lonmee on 4/22/21.
//

#import "Person+Work.h"

@implementation Person (Work)
- (void)code:(NSString *)content by:(NSString *)program {
    NSLog(@"Am coding %@ by %@", content, program);
}
-(void)say:(NSString *)content to:(Person *)person {
    NSLog(@"%@ said %@ from category to %@", self.firstName, content, person.firstName);
}
@end
