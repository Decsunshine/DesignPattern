//
//  RowFanSwitch.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "RowFanSwitch.h"
#import "RowFan.h"

@interface RowFanSwitch ()

@property (nonatomic, strong) RowFan *rowFan;

@end

@implementation RowFanSwitch

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rowFan = [RowFan new];
    }
    return self;
}

- (void)rowFanOn
{
    [self.rowFan high];
}

- (void)rowFanOff
{
    [self.rowFan off];
}

@end
