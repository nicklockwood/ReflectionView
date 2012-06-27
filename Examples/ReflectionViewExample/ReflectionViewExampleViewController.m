//
//  ReflectionViewExampleViewController.m
//  ReflectionViewExample
//
//  Created by Nick Lockwood on 23/07/2011.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import "ReflectionViewExampleViewController.h"

@implementation ReflectionViewExampleViewController

@synthesize reflectionView;

- (IBAction)toggleDynamic:(UISwitch *)sender
{
    reflectionView.dynamic = sender.on;
}

- (IBAction)updateAlpha:(UISlider *)slider
{
    reflectionView.reflectionAlpha = slider.value;
}

- (IBAction)updateGap:(UISlider *)slider
{
    reflectionView.reflectionGap = slider.value;
}

- (IBAction)updateScale:(UISlider *)slider
{
    reflectionView.reflectionScale = slider.value;
}

- (void)dealloc
{
    [reflectionView release];
    [super dealloc];
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.reflectionView = nil;
}

@end
