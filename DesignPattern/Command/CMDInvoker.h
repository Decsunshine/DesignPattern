//
//  CMDInvoker.h
//  DesignPattern
//
//  Created by honglianglu on 20/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CMDCommand;

@interface CMDInvoker : NSObject

@property (nonatomic, strong) CMDCommand *command;

- (void)invoke;

@end
