//
//  ViewController.m
//  CheckX13
//
//  Created by lip on 12/5/18.
//  Copyright © 2018 Andrew Lippman. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"


@implementation ViewController
@synthesize printer;
AppDelegate * appD;

- (void)viewDidLoad {  // window is not active yet, see next method
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    [self setDate];    // Works  12/5/18
    [_button16 setState:NSOnState];  // initialize to account 16
    appD = [[NSApplication sharedApplication] delegate];

    // [appD setMyString:@"Initial String"];  // Can't do yet, app not finished loading
    NSLog(@"View Did Load!!!");
    NSLog(@"The Printer now is:   %@",[appD printer]);
}

- (void) viewDidAppear {   // This changes the title after the view exists
    [super viewDidAppear];
    [[[self view] window] setTitle:@"This is the new title"];

}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.

}

- (IBAction)deposit:(id)sender {
}

- (IBAction)printButton:(id)sender {
    NSLog(@"This is the string from the delegate: %@",[appD myString]);

    // NSLog(@"Print Button Pressed");
    NSLog(@"The Printer now is:   %@",[appD printer]);
    
}

- (void)changeAccountTo16 {
    NSLog (@"Changing account to 16");
    // NSLog(@"%@",currentAccount)
}

- (void)changeAccountTo42 {
    NSLog (@"Changing account to 42");
}

- (IBAction)accountButton:(id)sender {
    NSLog(@"Radio Button Clicked %ld",[_button16 state]);
    NSLog(@"Radio Button Clicked %ld",[_button42 state]);
    if ([_button16 state] == NSOnState) [self changeAccountTo16];
    else if ([_button42 state] == NSOnState) [self changeAccountTo42];
}
-(void)setDate {
    today = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSDateFormatter *shortDate = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"d MMMM, yyyy"];    // Hopefully one d is correct!
    [shortDate setDateFormat:@"d MMM yyyy"];
    NSString * todayString = [dateFormatter stringFromDate:today];
    [_dateField setStringValue:todayString];
    NSString *registerDate = [shortDate stringFromDate:today];
}



@end
