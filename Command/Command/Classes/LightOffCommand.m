//
//  LightOffCommand.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "LightOffCommand.h"
#import "Light.h"

@interface LightOffCommand ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightOffCommand

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
    [self.light off];
}

- (void)undo
{
    [self.light on];
}

@end
