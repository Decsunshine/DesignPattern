//
//  ViewController.m
//  Observer
//
//  Created by honglianglu on 23/06/2018.
//  Copyright © 2018 cc. All rights reserved.
//

#import "ViewController.h"
#import "Bee.h"
#import "Flower.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Flower *flower = [[Flower alloc] init];
    
    Bee *bee1 = [[Bee alloc] init];
    bee1.name = @"bee 1";
    [flower addObserver:bee1];
    
    Bee *bee2 = [[Bee alloc] init];
    bee2.name = @"bee 2";
    [flower addObserver:bee2];

    Bee *bee3 = [[Bee alloc] init];
    bee3.name = @"bee 3";
    [flower addObserver:bee3];
    
    [flower open];
    [flower close];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
