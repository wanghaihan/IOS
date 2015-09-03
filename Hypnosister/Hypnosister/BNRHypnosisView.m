//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Haihan Wang on 15/8/20.
//  Copyright (c) 2015年 malong tech. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property(nonatomic) int times;
@end

@implementation BNRHypnosisView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
        self.times = 0;
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float radius = (hypot(bounds.size.width, bounds.size.height) / 2.0);
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for (; radius > 0; radius -= 20) {
        [path moveToPoint:CGPointMake(center.x + radius, center.y)];

        [path addArcWithCenter:center radius:radius startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];
    }
    //[path addArcWithCenter:center radius:radius - self.times * 20 startAngle:0.0 endAngle:M_PI * 2.0 clockwise:YES];

    
    path.lineWidth = 1 + self.times;
    [[UIColor lightGrayColor] setStroke];
    [path stroke];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.times++;
    [self setNeedsDisplay];
}

@end
