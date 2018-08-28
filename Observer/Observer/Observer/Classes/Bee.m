//
//  Bee.m
//  Observer
//
//  Created by honglianglu on 23/06/2018.
//  Copyright © 2018 cc. All rights reserved.
//

#import "Bee.h"

@implementation Bee

- (void)receiveOpen {
    NSLog(@"%@ breakfast !!!", self.name);
}

- (void)receiveClose {
    NSLog(@"%@ go bed !!!", self.name);
}

@end
