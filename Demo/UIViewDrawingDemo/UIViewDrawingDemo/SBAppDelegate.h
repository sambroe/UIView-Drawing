//
//  SBAppDelegate.h
//  UIViewDrawingDemo
//
//  Created by Sam Broe on 10/29/12.
//  Copyright (c) 2012 Sam Broe. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SBViewController;

@interface SBAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SBViewController *viewController;

@end
