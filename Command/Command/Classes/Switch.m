//
//  Switch.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "Switch.h"
#import "Command.h"

@interface Switch ()

@property (nonatomic, strong) Command *onCommand;
@property (nonatomic, strong) Command *offCommand;
@property (nonatomic, strong) Command *undoCommand;

@end

@implementation Switch

- (void)setupOnCommand:(Command *)onCommand
{
    self.onCommand = onCommand;
}

- (void)setupOffCommand:(Command *)offCommand
{
    self.offCommand = offCommand;
}

- (void)onButtonPressed
{
    [self.onCommand execute];
    self.undoCommand = self.onCommand;
}

- (void)offButtonPressed
{
    [self.offCommand execute];
    self.undoCommand = self.offCommand;
}

- (void)undoButtonPressed
{
    [self.undoCommand undo];
}

@end
