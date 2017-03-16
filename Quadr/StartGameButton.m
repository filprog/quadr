//
//  StartGameButton.m
//  Quadr
//
//  Created by Michal Mesyjasz on 15.03.2017.
//  Copyright © 2017 Michal Mesyjasz. All rights reserved.
//

#import "StartGameButton.h"

@implementation StartGameButton

- (void)DrawDrops:(CGContextRef)ctx DotsBitmap:(u_short)dotsBitmap
{
    float radius = self.frame.size.height/20;
    CGContextSetFillColorWithColor(ctx, [UIColor blackColor].CGColor);
    
    float x,y;
    
    for (int i=0; i<9; i++) {
        
        if ( (dotsBitmap&(1<<i))==0 )
            continue;
        
        if (i==0 || i==3 || i==6)
            x = 0.2 * self.frame.size.width;
        else
            if (i==2 || i==5 || i==8)
                x = 0.8 * self.frame.size.width;
            else
                x = 0.5 * self.frame.size.width;
        
        if (i==0 || i==1 || i==2)
            y = 0.2 * self.frame.size.height;
        else
            if (i==6 || i==7 || i==8)
                y = 0.8 * self.frame.size.height;
            else
                y = 0.5 * self.frame.size.height;
        
        CGContextAddEllipseInRect(ctx, CGRectMake(x+radius, y+radius, 2*radius, 2*radius));
        CGContextDrawPath(ctx,kCGPathFill);
    }
}

- (void)drawRect:(CGRect)rect
{
    ushort dotsBitmap = 0;
    
    switch (self.tag) {
        case 6:
            dotsBitmap = (1<<0) + (1<<2) + (1<<4) + (1<<6) + (1<<8);
            break;
        case 7:
            dotsBitmap = (1<<0) + (1<<2) + (1<<3) + (1<<5) + (1<<6) + (1<<8);
            break;
        case 8:
            dotsBitmap = (1<<0) + (1<<2) + (1<<3) + (1<<4) + (1<<5) + (1<<6) + (1<<8);
            break;
        case 9:
            dotsBitmap = (1<<0) + (1<<1) + (1<<2) + (1<<3) + (1<<5) + (1<<6) + (1<<7) + (1<<8);
            break;
        case 10:
            dotsBitmap = (1<<0) + (1<<1) + (1<<2) + (1<<3) + (1<<4) + (1<<5) + (1<<6) + (1<<7) + (1<<8);
            break;
        default:
            break;
    }
    
    [self DrawDrops:UIGraphicsGetCurrentContext() DotsBitmap:dotsBitmap];
    
    self.titleLabel.text = @"";
}


@end
