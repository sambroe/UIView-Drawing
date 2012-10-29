//
//  UIView+Drawing.h
//  UIViewDrawingDemo
//
//  Created by Sam Broe on 10/29/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBSide.h"

@interface UIView (Drawing)

// Vertical Line
- (void)drawVerticalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atXCoordinate:(CGFloat)x withColor:(UIColor*)color;
- (void)drawEtchedVerticalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atXCoordinate:(CGFloat)x;

// Horizontal Line
- (void)drawHorizontalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atYCoordinate:(CGFloat)y withColor:(UIColor*)color;
- (void)drawEtchedHorizontalDividerInContext:(CGContextRef)context inRect:(CGRect)rect atYCoordinate:(CGFloat)y;

// Border
- (void)drawBorderInContext:(CGContextRef)context inRect:(CGRect)rect withColor:(UIColor*)color forSides:(SBSide)sides;

@end
