//
//  ConcretePrototype.m
//  Prototype
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "ConcretePrototype.h"

@implementation ConcretePrototype

- (Prototype *)clone
{
    ConcretePrototype *clone = [[self class] new];
    if (clone) {
        clone.str = self.str;
        return clone;
    }
    return nil;
}

@end
