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

@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet ReflectionViewExampleViewController *viewController;

@end
