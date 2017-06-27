//
//  CMDClient.m
//  DesignPattern
//
//  Created by honglianglu on 20/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "CMDClient.h"
#import "CMDReceiverA.h"
#import "CMDConcreteCommandA.h"
#import "CMDInvoker.h"

@implementation CMDClient

- (void)go
{
    CMDInvoker *invoker = [CMDInvoker new];
    
    CMDReceiverA *receiverA = [CMDReceiverA new];
    CMDConcreteCommandA *commandA = [[CMDConcreteCommandA alloc] initWithReceiver:receiverA];
    
    [invoker setCommand:commandA];
    [invoker invoke];
}

@end
