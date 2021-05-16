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
    
#pragma _objc_msgForward() @ runtime
    [_personA say:@"missing you" to:_personB];
    [_personA seek:_personB look:@"anxiously"];
    [_personA invite:_personB look:@"sincerely"];
    [_personA wandering:@"in snow" with:_personB];
//    [_personA leave:_personB for:@"finally"];
    
#pragma Instance method added to Person @ runtime
    Method plugMethod = class_getInstanceMethod([self class], @selector(plugMethod));
    bool res = class_addMethod([Person class], @selector(plugMethod), method_getImplementation(plugMethod), "v@");
    NSLog(@"method:plugMethod selector&implementation added to Person:%d", res);
    [_personA performSelector:@selector(plugMethod)];
#pragma Method swizzling
    Method methodOriginal = class_getInstanceMethod(SubViewController.class, @selector(viewDidLoad));
    Method methodInstead = class_getInstanceMethod(self.class, @selector(insteadViewDidLoad));
    bool added = class_addMethod([SubViewController class], @selector(viewDidLoad), method_getImplementation(methodInstead), "v@");
    NSLog(@"method added to SubViewController:%d 'ause \"viewDidLoad\" exist", added);
    added = NO;
    if (added) {
        IMP impOriginal = class_replaceMethod([SubViewController class], @selector(viewDidLoad), method_getImplementation(methodInstead), method_getTypeEncoding(methodInstead));
    } else {
        method_exchangeImplementations(methodOriginal, methodInstead);
    }
    // make sure imp exchanged
    [[[self alloc]init] performSelector:@selector(insteadViewDidLoad)];
}

- (void)plugMethod {
    NSLog(@"Method \"plugMethod\" called");
}

- (void)insteadViewDidLoad {
    NSLog(@"Method \"insteadViewDidLoad\" called");
    [KVOTest test];
}
@end
