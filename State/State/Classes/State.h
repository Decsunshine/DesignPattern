//
//  State.h
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StateYoubaoMachine.h"

@interface State : NSObject

@property (nonatomic, weak) StateYoubaoMachine *youbaoMachine;

- (instancetype)initWithContext:(StateYoubaoMachine *)youbaoMachine;
- (void)selected;
- (void)pay;

@end
