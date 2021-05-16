//
//  Observer.m
//  OCDemo
//
//  Created by Lonmee on 5/16/21.
//

#import "Observer.h"

@implementation Observer
-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    NSLog(@"keyPath: %@, ofObject: %@, change: %@, context: %@", keyPath, object, change, context);
}
@end
