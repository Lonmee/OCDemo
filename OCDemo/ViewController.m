//
//  ViewController.m
//  OCDemo
//
//  Created by Lonmee on 4/7/21.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
# pragma mark - OC & Swift test
    //    [OCPersonTest test];
    //    [SwiftPersonTest test];
    //    [RuntimeTest test];
    [CategoryTest test];
    
    NSObject *o0 = [NSObject init];
    NSObject * o1 = [NSObject new];
    NSObject * o2 = [[NSObject alloc]init];
    NSObject * o3 = [o0 init];
    NSObject *o4 = o1.init;
    
}

@end
