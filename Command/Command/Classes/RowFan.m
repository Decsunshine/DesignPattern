//
//  RowFan.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "RowFan.h"

@interface RowFan ()

@end

@implementation RowFan

- (instancetype)init
{
    self = [super init];
    if (self) {
        _speed = SpeedOff;
    }
    return self;
}

- (void)off
{
    self.speed = SpeedOff;
    NSLog(@"row fan off");
}

- (void)low
{
    self.speed = SpeedLow;
    NSLog(@"row fan speed low");
}

- (void)medium
{
    self.speed = SpeedMedium;
    NSLog(@"row fan speed medium");
}

- (void)high
{
    self.speed = SpeedHigh;
    NSLog(@"row fan speed high");
}

@end
