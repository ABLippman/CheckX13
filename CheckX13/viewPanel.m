//
//  viewPanel.m
//  CheckX13
//
//  Created by lip on 12/8/18.
//  Copyright © 2018 lip. All rights reserved.
//

#import "viewPanel.h"

@interface viewPanel ()

@end

@implementation viewPanel

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    [_depositButton setTitle:@"Deposit"];
}
- (IBAction)enterDeposit:(id)sender {
    NSLog(@"Make Deposit!!!");
}

@end
