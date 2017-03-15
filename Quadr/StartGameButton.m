//
//  UIButton+StartButton.m
//  Quadr
//
//  Created by Michal Mesyjasz on 15.03.2017.
//  Copyright © 2017 Michal Mesyjasz. All rights reserved.
//

#import "StartGameButton.h"

@implementation StartGameButton


- (void)DrawDrop:(CGContextRef)ctx X:(float)x Y:(float)y
{
    float radius = (float)[[UIScreen mainScreen] bounds].size.width/50.0f;
    
    CGContextSetFillColorWithColor(ctx, [UIColor blackColor].CGColor);
    CGContextAddEllipseInRect(ctx, CGRectMake(x+radius,y+radius, 2*radius, 2*radius));
    CGContextDrawPath(ctx,kCGPathFill);
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();

}

@end
