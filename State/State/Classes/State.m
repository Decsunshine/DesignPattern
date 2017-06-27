//
//  State.m
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "State.h"

@implementation State

- (instancetype)initWithContext:(StateYoubaoMachine *)youbaoMachine
{
    self = [super init];
    if (self) {
        _youbaoMachine = youbaoMachine;
    }
    return self;
}

- (void)selected
{
    // override
}

- (void)pay
{
    // override
}

@end
