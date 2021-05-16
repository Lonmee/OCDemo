//
//  SubViewController.m
//  OCDemo
//
//  Created by Lonmee on 5/15/21.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

+ (void)load {
    NSLog(@"subview load");
}

+ (void)initialize {
    NSLog(@"subview initialized");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"Subview did load");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
