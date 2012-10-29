//
//  SBSide.h
//  UIViewDrawingDemo
//
//  Created by Sam Broe on 10/29/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#ifndef UIViewDrawingDemo_SBSide_h
#define UIViewDrawingDemo_SBSide_h

typedef enum
{
    SBSideNone = 1 << 0,
	SBSideTop = 1 << 1,
	SBSideRight = 1 << 2,
	SBSideBottom = 1 << 3,
    SBSideLeft = 1 << 4
}
SBSide;

#endif
