//
//  LightOnCommand.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "LightOnCommand.h"
#import "Light.h"

@interface LightOnCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOnCommand

- (instancetype)initWithLight:(Light *)light
{
    self = [super init];
    if (self) {
        _light = light;
    }
    return self;
}

- (void)execute
{
    [self.light on];
}

- (void)undo
{
    [self.light off];
}

@end
