//
//  UIView+Drawing.m
//  UIViewDrawingDemo
//
//  Created by Sam Broe on 10/29/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#import "UIView+Drawing.h"

@implementation UIView (Drawing)

-(void)drawVerticalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atXCoordinate:(CGFloat)x withColor:(UIColor *)color
{
    CGContextSetAllowsAntialiasing(context, NO);
    CGContextMoveToPoint(context, x, CGRectGetMinY(rect));
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    CGContextAddLineToPoint(context, x, rect.size.height);
    CGContextStrokePath(context);
    CGContextSetAllowsAntialiasing(context, YES);
}

-(void)drawEtchedVerticalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atXCoordinate:(CGFloat)x
{
    CGContextSetAllowsAntialiasing(context, NO);
    CGContextMoveToPoint(context, x, CGRectGetMinY(rect));
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextAddLineToPoint(context, x, rect.size.height);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, x + 1.0, CGRectGetMinY(rect));
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithWhite:1.0 alpha:0.25].CGColor);
    CGContextAddLineToPoint(context, x + 1.0, CGRectGetMaxY(rect));
    CGContextStrokePath(context);
    CGContextSetAllowsAntialiasing(context, YES);
}

-(void)drawHorizontalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atYCoordinate:(CGFloat)y withColor:(UIColor *)color
{
    CGContextSetAllowsAntialiasing(context, NO);
    CGContextMoveToPoint(context, CGRectGetMinX(rect), y);
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    CGContextAddLineToPoint(context, rect.size.width, y);
    CGContextStrokePath(context);
    CGContextSetAllowsAntialiasing(context, YES);
}

-(void)drawEtchedHorizontalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atYCoordinate:(CGFloat)y
{
    CGContextSetAllowsAntialiasing(context, NO);
    CGContextMoveToPoint(context, CGRectGetMinX(rect), y);
    CGContextSetStrokeColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextAddLineToPoint(context, rect.size.width, y);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, CGRectGetMinX(rect), y + 1.0);
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithWhite:1.0 alpha:0.25].CGColor);
    CGContextAddLineToPoint(context, rect.size.width, y + 1.0);
    CGContextStrokePath(context);
    CGContextSetAllowsAntialiasing(context, YES);
}

-(void)drawBorderInContext:(CGContextRef)context inRect:(CGRect)rect withColor:(UIColor *)color forSides:(SBSide)sides
{
    CGContextSetAllowsAntialiasing(context, NO);
    
    CGContextSetStrokeColorWithColor(context, color.CGColor);
    
    // Bottom
    if ((sides & SBSideBottom) == SBSideBottom)
    {
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMaxY(rect) - 0.5);
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMaxY(rect) - 0.5);
        CGContextStrokePath(context);
    }
    
    // Left
    if ((sides & SBSideLeft) == SBSideLeft)
    {
        CGContextMoveToPoint(context, CGRectGetMinX(rect) + 0.5, CGRectGetMinY(rect));
        CGContextAddLineToPoint(context, CGRectGetMinX(rect) + 0.5, CGRectGetMaxY(rect));
        CGContextStrokePath(context);
    }
    
    // Top
    if ((sides & SBSideTop) == SBSideTop)
    {
        CGContextMoveToPoint(context, CGRectGetMinX(rect), CGRectGetMinY(rect) + 0.5);
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect), CGRectGetMinY(rect) + 0.5);
        CGContextStrokePath(context);
    }
    
    // Right
    if ((sides & SBSideRight) == SBSideRight)
    {
        CGContextMoveToPoint(context, CGRectGetMaxX(rect) - 0.5, CGRectGetMinY(rect));
        CGContextAddLineToPoint(context, CGRectGetMaxX(rect) - 0.5, CGRectGetMaxY(rect));
        CGContextStrokePath(context);
    }
    
    CGContextSetAllowsAntialiasing(context, YES);
}


@end
