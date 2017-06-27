//
//  Switch.h
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Command;

@interface Switch : NSObject

- (void)setupOnCommand:(Command *)onCommand;
- (void)setupOffCommand:(Command *)offCommand;
- (void)onButtonPressed;
- (void)offButtonPressed;
- (void)undoButtonPressed;

@end
