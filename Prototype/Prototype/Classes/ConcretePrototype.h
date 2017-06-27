//
//  ConcretePrototype.h
//  Prototype
//
//  Created by honglianglu on 25/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "Prototype.h"

@interface ConcretePrototype : Prototype

@property (nonatomic, copy) NSString *str;
- (Prototype *)clone;

@end
