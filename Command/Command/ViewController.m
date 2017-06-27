//
//  ViewController.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "ViewController.h"
#import "Switch.h"
#import "Light.h"
#import "RowFan.h"
#import "LightOnCommand.h"
#import "LightOffCommand.h"
#import "RowFanOffCommand.h"
#import "RowFanHighCommand.h"

#import "LightSwitch.h"
#import "RowFanSwitch.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    LightSwitch *ls = [LightSwitch new];
    [ls lightOn];
    [ls lightOff];
    
    RowFanSwitch *rfs = [RowFanSwitch new];
    [rfs rowFanOn];
    [rfs rowFanOff];
    
    [self command];
}

- (void)command
{
    Switch *s = [Switch new];
    
    Light *light = [Light new];
    LightOnCommand *lightOnCommand = [[LightOnCommand alloc] initWithLight:light];
    LightOffCommand *lightOffCommand = [[LightOffCommand alloc] initWithLight:light];
    [s setupOnCommand:lightOnCommand];
    [s setupOffCommand:lightOffCommand];
    
    [s onButtonPressed];
    [s offButtonPressed];
    [s undoButtonPressed];
    
    RowFan *rowFan = [RowFan new];
    RowFanHighCommand *rowFanHighCommand = [[RowFanHighCommand alloc] initWithRowFan:rowFan];
    RowFanOffCommand *rowFanOffCommand = [[RowFanOffCommand alloc] initWithRowFan:rowFan];
    [s setupOnCommand:rowFanHighCommand];
    [s setupOffCommand:rowFanOffCommand];
    
    [s onButtonPressed];
    [s offButtonPressed];
    [s undoButtonPressed];
}

@end
