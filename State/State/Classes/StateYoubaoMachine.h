//
//  StateYoubaoMachine.h
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class StandByState, SlodState, TakeOrderState, State;

@interface StateYoubaoMachine : NSObject

@property (nonatomic, strong) StandByState *standByState;
@property (nonatomic, strong) SlodState *slodState;
@property (nonatomic, strong) TakeOrderState *takeOrderState;

- (void)setState:(State *)state;

@end
