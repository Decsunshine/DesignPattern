//
//  Command.h
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Command : NSObject

- (void)execute;
- (void)undo;

@end
