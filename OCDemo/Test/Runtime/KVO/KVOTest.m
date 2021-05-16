//
//  KVOTest.m
//  OCDemo
//
//  Created by Lonmee on 5/16/21.
//

#import "KVOTest.h"

@implementation KVOTest
+(void)test {
    Foo *foo = [Foo new];
    Observer *observer = [Observer new];
    NSKeyValueObservingOptions option = NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld;
    [foo addObserver:observer forKeyPath:@"xxx" options:option context:nil];
# pragma "NSKVONotifying_Foo" genarated@runtime
    NSLog(@"%@", object_getClass(foo));
    foo.xxx = 35;
    foo.xxx = 39;
# pragma manually to inform the observed object
    [foo willChangeValueForKey:@"xxx"];
    [foo bypass:50];
    [foo didChangeValueForKey:@"xxx"];
}
@end
