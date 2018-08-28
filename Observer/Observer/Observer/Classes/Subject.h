//
//  Subject.h
//  Observer
//
//  Created by honglianglu on 23/06/2018.
//  Copyright © 2018 cc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observer;

@interface Subject : NSObject

- (void)addObserver:(Observer *)observer;
- (void)removeObserver:(Observer *)observer;
- (void)notifyOpen;
- (void)notifyClose;

@end
