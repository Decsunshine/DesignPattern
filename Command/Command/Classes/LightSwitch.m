//
//  NormalSwitch.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "LightSwitch.h"
#import "Light.h"

@interface LightSwitch ()

@property (nonatomic, strong) Light *light;

@end

@implementation LightSwitch

- (instancetype)init
{
    self = [super init];
    if (self) {
        _light = [Light new];
    }
    return self;
}

- (void)lightOn
{
    [self.light on];
}

- (void)lightOff
{
    [self.light off];
}

@end
