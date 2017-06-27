//
//  CMDConcreteCommandA.m
//  DesignPattern
//
//  Created by honglianglu on 20/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "CMDConcreteCommandA.h"
#import "CMDReceiverA.h"

@interface CMDConcreteCommandA ()

@property (nonatomic, strong) CMDReceiverA *receiver;

@end

@implementation CMDConcreteCommandA

- (instancetype)initWithReceiver:(CMDReceiverA *)receiver
{
    self = [super init];
    if (self) {
        self.receiver = receiver;
    }
    return self;
}

- (void)execute
{
    [self.receiver action];
}

@end
