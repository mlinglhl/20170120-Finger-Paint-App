//
//  PaintView.m
//  20170120 Finger Paint App
//
//  Created by Minhung Ling on 2017-01-20.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//


#import "PaintView.h"

@interface PaintView ()

@property NSArray <Line *> *lineArray;

@end


@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        _lineArray = @[
                          [[Line alloc] initWithColour:[UIColor blackColor]],
                          [[Line alloc] initWithColour:[UIColor redColor]],
                          [[Line alloc] initWithColour:[UIColor orangeColor]],
                          [[Line alloc] initWithColour:[UIColor yellowColor]],
                          [[Line alloc] initWithColour:[UIColor greenColor]],
                          [[Line alloc] initWithColour:[UIColor blueColor]],
                          [[Line alloc] initWithColour:[UIColor purpleColor]],
                          [[Line alloc] initWithColour:[UIColor brownColor]]
                          ];
        _colourIndex = ColourIndexBlack;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath new];
    path.lineWidth = 5;
    UIColor *colour = [UIColor blackColor];
    [colour setStroke];
    path.lineCapStyle = kCGLineCapRound;
    for (Line *line in self.lineArray) {
        UIBezierPath *path = [UIBezierPath new];
        path.lineWidth = 5;
        [line.colour setStroke];
        path.lineCapStyle = kCGLineCapRound;
        for (LineSegment *lineSegment in line.segmentArray) {
            if (CGPointEqualToPoint(lineSegment.firstPoint, lineSegment.secondPoint)) {
                [path moveToPoint: lineSegment.firstPoint];
                continue;
            }
            [path addLineToPoint:lineSegment.firstPoint];
            [path addLineToPoint:lineSegment.secondPoint];
        }
        [path stroke];
    }
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touchObject = touches.anyObject;
    CGPoint first = [touchObject previousLocationInView:self];
    LineSegment *segment = [[LineSegment alloc] initWithFirstPoint:first SecondPoint:first];
    [self.lineArray[self.colourIndex].segmentArray addObject:segment];
    [self setNeedsDisplay];
}

-(void) touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    UITouch *touchObject = touches.anyObject;
    CGPoint first = [touchObject previousLocationInView:self];
    CGPoint second = [touchObject locationInView:self];
    LineSegment *segment = [[LineSegment alloc] initWithFirstPoint:first SecondPoint:second];
    [self.lineArray[self.colourIndex].segmentArray addObject:segment];
    [self setNeedsDisplay];
}

- (void) clearImages {
    for (Line *line in self.lineArray) {
        [line.segmentArray removeAllObjects];
        [self setNeedsDisplay];
    }
}

-(void) touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}

@end
