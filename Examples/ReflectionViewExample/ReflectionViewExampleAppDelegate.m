//
//  ReflectionViewExampleAppDelegate.m
//  ReflectionViewExample
//
//  Created by Nick Lockwood on 23/07/2011.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import "ReflectionViewExampleAppDelegate.h"
#import "ReflectionViewExampleViewController.h"


@implementation ReflectionViewExampleAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)dealloc
{
    [window release];
    [viewController release];
    [super dealloc];
}

@end
