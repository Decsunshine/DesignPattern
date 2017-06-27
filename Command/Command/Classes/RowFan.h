//
//  RowFan.h
//  Command
//
//  Created by honglianglu on 24/06/2017.
//  Copyright © 2017 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Speed) {
    SpeedHigh,
    SpeedMedium,
    SpeedLow,
    SpeedOff,
};

@interface RowFan : NSObject

@property (nonatomic, assign) NSInteger speed;

- (void)off;
- (void)low;
- (void)medium;
- (void)high;

@end
