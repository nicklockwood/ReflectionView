//
//  ReflectionViewExampleAppDelegate.h
//  ReflectionViewExample
//
//  Created by Nick Lockwood on 23/07/2011.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ReflectionViewExampleViewController;

@interface ReflectionViewExampleAppDelegate : NSObject <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ReflectionViewExampleViewController *viewController;

@end
