//
//  RowFanOffCommand.h
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import "Command.h"

@class RowFan;

@interface RowFanOffCommand : Command

- (instancetype)initWithRowFan:(RowFan *)rowFan;

@end
