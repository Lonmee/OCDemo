//
//  Person+Work.m
//  OCDemo
//
//  Created by Lonmee on 4/22/21.
//
#import "Person+Work.h"
@implementation Person (Work)
@dynamic duty;

#pragma dynamic propery in catagory @ runtime
-(NSString *)duty {
    return objc_getAssociatedObject(self, "duty");
}

-(void)setDuty:(NSString *)name {
    objc_setAssociatedObject(self, "duty", name, OBJC_ASSOCIATION_ASSIGN);
}

-(void)code:(NSString *)content by:(NSString *)program {
    NSLog(@"Am coding %@ by %@ for my duty: %@", content, program, self.duty);
}

-(void)say:(NSString *)content to:(Person *)person {
    NSLog(@"%@ said %@ from category to %@", self.firstName, content, person.firstName);
}
@end
