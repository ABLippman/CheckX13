//
//  ViewController.h
//  CheckX13
//
//  Created by lip on 12/5/18.
//  Copyright © 2018 Andrew Lippman. All rights reserved.
//

#import <Cocoa/Cocoa.h>
NSDate * today;

//  Globals for Check Tests

@interface ViewController : NSViewController
@property (weak) IBOutlet NSButton *sequenceButton;
@property (weak) IBOutlet NSTextField *dateField;
@property (weak) IBOutlet NSTextField *balanceField;
@property (weak) IBOutlet NSButton *button42;
@property (weak) IBOutlet NSButton *button16;
@property (nonatomic, retain) NSString *printer;
- (IBAction)deposit:(id)sender;
- (IBAction)printButton:(id)sender;
- (IBAction)accountButton:(id)sender;

@end

