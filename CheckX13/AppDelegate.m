//
//  AppDelegate.m
//  CheckX13
//
//  Created by lip on 12/5/18.  Test app for new version of Checkwriter. in objC
//  Copyright © 2018 Andrew Lippman. All rights reserved.
//
//  Defaults works, GIT depository created, communications with controller works, panel does not  12/8
//

#import "AppDelegate.h"
#import "Globals.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
@synthesize myString;
NSController * myController;

- (id) init {    //  THis is a kludge give printer a value before the window launches
    self = [super init];
    NSLog(@"Initting....");
    _printer = @"Initial Printer";
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSMutableString* c = [NSMutableString stringWithCapacity:32];  //  Account number.  No more than 32 chars.
    [c setString:@"16641301"];
    currentAccount = c;
    currentAccountNumber=16641301;
    NSLog(@"Current Account is: %@",c);
    NSLog(@"Current Account number is %ld",currentAccountNumber);

    //   accounts is an array of account number strings
    
    NSString *directory = @"/Users/lip/CheckX13";
    NSArray *dummyaccounts = [NSArray arrayWithObjects:@"16641301", @"42331901", nil];
    NSString *dummyprinter = @"Lip_Home";
    
    //   categories is an array of category strings
    
    NSArray *categories = [NSArray arrayWithObjects:@"Annie", @"Boat", @"Business", @"Cars", @"Cash", @"Charities", @"Communications", @"Consulting", @"Credit Bills", @"Entertainment", @"Food", @"House", @"House Operating", @"Insurance", @"Julia", @"Lippman", @"Miscellaneous", @"Political", @"Services", @"Sundries", @"Tax Deductions", @"Taxes", @"Utilities", nil];
    
    //  Get the prefs from computer if exists
    NSUserDefaults *checkDefaultSet = [NSUserDefaults standardUserDefaults];
    
    //  Now we set up default prefs and register them in case none are stored...
    
    //  First establish content, two arrays for dictionary
    NSArray *keyArray = [NSArray arrayWithObjects:@"Directory",@"Accounts",@"Printer",@"Categories",nil];
    NSArray *valueArray = [NSArray arrayWithObjects:directory,dummyaccounts,dummyprinter,categories,nil];
    
    //  Now, create the dictionary and register it
    NSDictionary *checkDefaults;
    checkDefaults = [NSDictionary dictionaryWithObjects:valueArray forKeys:keyArray];  // set up basic prefs in case none exist
    [checkDefaultSet registerDefaults:checkDefaults]; //  Use the registered set in case no stored pref exists
    
    //  Test of writing out some defaults for human reading....
    [checkDefaultSet setObject:categories forKey:@"Categories"];
    [checkDefaultSet setObject:directory forKey:@"Directory"];
    NSLog (@"The Printer now is %@",[checkDefaultSet objectForKey:@"Printer"]);
    
    //  Now tell the Controller the printer and other information we got through initialization
    
    //  How do we talk to the controller?
    _printer = [checkDefaultSet objectForKey:@"Printer"];
    self.myString = @"This is the delegate string";
    NSLog(@"When does this happen, %@",myString);
}

- (void)printMsg {
    NSLog(@"Prints a message");
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
