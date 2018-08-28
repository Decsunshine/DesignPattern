//
//  Subject.m
//  Observer
//
//  Created by honglianglu on 23/06/2018.
//  Copyright © 2018 cc. All rights reserved.
//

#import "Subject.h"
#import "Observer.h"

@interface Subject ()

@property (nonatomic, strong) NSMutableArray *observerList;

@end


@implementation Subject

- (instancetype)init
{
    if (self = [super init]) {
        _observerList = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addObserver:(Observer *)observer {
    [self.observerList addObject:observer];
}

- (void)removeObserver:(Observer *)observer {
    [self.observerList removeObject:observer];
}

- (void)notifyOpen {
    [self.observerList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Observer *observer = (Observer *)obj;
        [observer receiveOpen];
    }];
}

- (void)notifyClose {
    [self.observerList enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        Observer *observer = (Observer *)obj;
        [observer receiveClose];
    }];
}

@end
