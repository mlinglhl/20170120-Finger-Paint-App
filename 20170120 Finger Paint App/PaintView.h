//
//  PaintView.h
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LineSegment.h"
#import "Line.h"

typedef NS_ENUM(NSUInteger, ColourIndex) {
    ColourIndexBlack,
    ColourIndexRed,
    ColourIndexOrange,
    ColourIndexYellow,
    ColourIndexGreen,
    ColourIndexBlue,
    ColourIndexPurple,
    ColourIndexBrown
};

@interface PaintView : UIView
@property ColourIndex colourIndex;

- (void) clearImages;

@end
