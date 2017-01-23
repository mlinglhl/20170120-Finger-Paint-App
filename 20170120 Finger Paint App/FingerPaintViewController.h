//
//  FingerPaintViewController.h
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PaintView.h"

@interface FingerPaintViewController : UIViewController
@property (weak, nonatomic) IBOutlet PaintView *paintView;
- (IBAction)clear:(UIButton *)sender;
- (IBAction)chooseColour:(UIButton *)sender;

@end
