//
//  TakeOrderState.m
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "TakeOrderState.h"

@implementation TakeOrderState

- (void)selected
{
    NSLog(@"您已选中商品");
}

- (void)pay
{
    [self.youbaoMachine setState:(State *)self.youbaoMachine.slodState];
    NSLog(@"商品正在出库");
    NSLog(@"...");
    NSLog(@"商品已出库");
    [self.youbaoMachine setState:(State *)self.youbaoMachine.standByState];
}

@end
