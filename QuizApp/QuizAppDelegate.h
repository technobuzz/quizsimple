//
//  QuizAppDelegate.h
//  QuizApp
//
//  Created by David Bloom on 6/4/14.
//  Copyright (c) 2014 David Bloom. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QuizViewController;

@interface QuizAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) QuizViewController *viewController;

@end
