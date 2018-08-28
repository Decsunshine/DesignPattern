//
//  Flower.m
//  Observer
//
//  Created by honglianglu on 23/06/2018.
//  Copyright © 2018 cc. All rights reserved.
//

#import "Flower.h"

@implementation Flower

- (void)open {
    NSLog(@"Flower open !!!");
    [self notifyOpen];
}

- (void)close {
    NSLog(@"Flower close !!!");
    [self notifyClose];
}

@end
