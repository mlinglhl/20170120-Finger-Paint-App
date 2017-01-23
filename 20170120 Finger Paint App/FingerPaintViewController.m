//
//  FingerPaintViewController.m
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "FingerPaintViewController.h"

@interface FingerPaintViewController ()

@end

@implementation FingerPaintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)clear:(UIButton *)sender {
    [self.paintView clearImages];
}

- (IBAction)chooseColour:(UIButton *)sender {
    self.paintView.colourIndex = sender.tag;
}

@end
