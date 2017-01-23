//
//  Line.m
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "Line.h"

@implementation Line
- (instancetype)initWithColour: (UIColor *) colour
{
    self = [super init];
    if (self) {
        _colour = colour;
        _segmentArray = [NSMutableArray new];
    }
    return self;
}
@end
