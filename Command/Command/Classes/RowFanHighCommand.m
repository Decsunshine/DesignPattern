//
//  RowFanHighCommand.m
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "RowFanHighCommand.h"
#import "RowFan.h"

@interface RowFanHighCommand ()

@property (nonatomic, strong) RowFan *rowFan;
@property (nonatomic, assign) Speed speed;

@end
@implementation RowFanHighCommand

- (instancetype)initWithRowFan:(RowFan *)rowFan
{
    self = [super init];
    if (self) {
        _rowFan = rowFan;
    }
    return self;
}

- (void)execute
{
    self.speed = self.rowFan.speed;
    [self.rowFan high];
}

- (void)undo
{
    if (self.speed == SpeedHigh) {
        [self.rowFan high];
    } else if (self.speed == SpeedMedium) {
        [self.rowFan medium];
    } else if (self.speed == SpeedLow) {
        [self.rowFan low];
    } else if (self.speed == SpeedOff) {
        [self.rowFan off];
    } else {
        [self.rowFan off];
    }
}

@end
