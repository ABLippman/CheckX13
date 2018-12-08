//
//  AppDelegate.h
//  CheckX13
//
//  Created by lip on 12/5/18.
//  Copyright © 2018 Andrew Lippman. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "viewPanel.h"

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSPopUpButton *_accountList;
}
@property (nonatomic, retain) NSString *myString;
@property (nonatomic) NSString *printer;
@property (nonatomic) viewPanel* depositPanel;
@end

