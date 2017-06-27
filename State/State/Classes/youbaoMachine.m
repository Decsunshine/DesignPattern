//
//  youbaoMachine.m
//  State
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "youbaoMachine.h"

typedef NS_ENUM(NSInteger, State) {
    StateStandby,     // 待机
    StateTakeOrder,   // 下单
    StateSlod,        // 售出
    StateSlodOut      // 售罄
};

@interface youbaoMachine ()

@property (nonatomic, assign) State state;
@property (nonatomic, assign) NSUInteger count;

@end

@implementation youbaoMachine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _state = StateStandby;
        _count = 15;
    }
    return self;
}

- (void)selected
{
    if (self.state == StateSlod) {
        NSLog(@"请稍后选择");
    } else if (self.state == StateStandby) {
        self.state = StateTakeOrder;
        NSLog(@"选中购买的商品");
    } else if (self.state == StateTakeOrder) {
        NSLog(@"您已选中商品");
    } else if (self.state == StateSlodOut) {
        NSLog(@"商品已全部出售");
    } else {
        NSLog(@"请稍后");
    }
}
- (void)pay
{
    if (self.state == StateSlod) {
        NSLog(@"请不要重复付款");
    } else if (self.state == StateStandby) {
        NSLog(@"请选择要购买的商品");
    } else if (self.state == StateTakeOrder) {
        if (self.count > 0) {
            self.count -= 1;
            self.state = StateSlod;
            NSLog(@"商品正在出库");
            NSLog(@"...");
            NSLog(@"商品已出库");
            self.state = StateStandby;
        } else {
            self.state = StateSlodOut;
            NSLog(@"商品已全部出售");
        }
    } else if (self.state == StateSlodOut) {
        NSLog(@"商品已全部出售");
    } else {
        NSLog(@"请稍后");
    }
}

@end
