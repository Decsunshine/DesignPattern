//
//  CMDInvoker.m
//  DesignPattern
//
//  Created by honglianglu on 20/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "CMDInvoker.h"
#import "CMDCommand.h"

@implementation CMDInvoker

- (void)invoke
{
    [self.command execute];
}

@end
