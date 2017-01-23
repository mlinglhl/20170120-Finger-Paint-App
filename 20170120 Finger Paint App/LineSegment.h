//
//  LineSegment.h
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

@import UIKit;

@interface LineSegment : NSObject

@property CGPoint firstPoint;
@property CGPoint secondPoint;
@property UIColor *colour;
- (instancetype)initWithFirstPoint: (CGPoint) first SecondPoint: (CGPoint) second;
@end
