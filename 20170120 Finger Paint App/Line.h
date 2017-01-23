//
//  Line.h
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LineSegment.h"

@interface Line : NSObject

@property NSMutableArray <LineSegment *>* segmentArray;
@property UIColor *colour;
- (instancetype)initWithColour: (UIColor *) colour;
@end
