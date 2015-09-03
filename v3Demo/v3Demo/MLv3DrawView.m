//
//  MLv3DrawView.m
//  v3Demo
//
//  Created by Haihan Wang on 15/8/28.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "MLv3DrawView.h"
#import "MLv3Line.h"

@interface MLv3DrawView ()
@property(nonatomic, strong) NSMutableDictionary *currentLines;
@property(nonatomic, strong) NSMutableArray *finishiedLines;
@end

@implementation MLv3DrawView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.finishiedLines = [[NSMutableArray alloc] init];
        self.currentLines = [[NSMutableDictionary alloc] init];
        self.backgroundColor = [UIColor grayColor];
        [self setMultipleTouchEnabled:YES];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [[UIColor blackColor] set];
    for (MLv3Line *line in self.finishiedLines) {
        [self strokeLine:line];
    }

    [[UIColor redColor] set];
    for (NSValue *key in self.currentLines) {
        [self strokeLine:self.currentLines[key]];
    }
}

- (void)strokeLine:(MLv3Line *)line {
    UIBezierPath *bp = [UIBezierPath bezierPath];
    bp.lineWidth = 10;
    bp.lineCapStyle = kCGLineCapRound;
    [bp moveToPoint:line.begin];
    [bp addLineToPoint:line.end];
    [bp stroke];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    //UITouch *t = [touches anyObject];
    for (UITouch *t in touches) {
        CGPoint location = [t locationInView:self];
        MLv3Line *currentLine = [[MLv3Line alloc] init];
        currentLine.begin = location;
        currentLine.end = location;
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        self.currentLines[key] = currentLine;
    }
    [self setNeedsDisplay];
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    // UITouch *t = [touches anyObject];
    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        MLv3Line *currentline = self.currentLines[key];
        currentline.end = [t locationInView:self];
    }
    [self setNeedsDisplay];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    //    [self.finishiedLines addObject:self.currentLine];
    //    self.currentLine = nil;
    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        MLv3Line *currentline = self.currentLines[key];
        [self.finishiedLines addObject:currentline];
        [self.currentLines removeObjectForKey:key];
    }
    [self setNeedsDisplay];
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *t in touches) {
        NSValue *key = [NSValue valueWithNonretainedObject:t];
        [self.currentLines removeObjectForKey:key];
    }
    [self setNeedsDisplay];
}

@end
