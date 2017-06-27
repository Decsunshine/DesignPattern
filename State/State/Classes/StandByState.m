//
//  StandByState.m
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "StandByState.h"

@implementation StandByState

- (void)selected
{
    [self.youbaoMachine setState:(State *)self.youbaoMachine.takeOrderState];
    NSLog(@"选中购买的商品");
}

- (void)pay
{
    NSLog(@"请选择要购买的商品");
}

@end
