//
//  StateYoubaoMachine.m
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "StateYoubaoMachine.h"
#import "SlodState.h"
#import "StandByState.h"
#import "TakeOrderState.h"

@interface StateYoubaoMachine ()

@property (nonatomic, strong) State *state;

@end

@implementation StateYoubaoMachine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _takeOrderState = [[TakeOrderState alloc] initWithContext:self];
        _slodState = [[SlodState alloc] initWithContext:self];
        _standByState = [[StandByState alloc] initWithContext:self];
        _state = _standByState;
    }
    return self;
}

- (void)selected
{
    [self.state selected];
}

- (void)pay
{
    [self.state pay];
}

- (void)setState:(State *)state
{
    _state = state;
}

@end
