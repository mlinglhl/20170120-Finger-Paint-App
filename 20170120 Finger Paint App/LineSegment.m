//
//  LineSegment.m
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

- (instancetype)initWithFirstPoint: (CGPoint) first SecondPoint: (CGPoint) second
{
    self = [super init];
    if (self) {
        _firstPoint = first;
        _secondPoint = second;
    }
    return self;
}

@end
