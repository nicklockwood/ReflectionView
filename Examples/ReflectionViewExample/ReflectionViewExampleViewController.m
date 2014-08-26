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
    self.reflectionView.dynamic = sender.on;
}

- (IBAction)updateAlpha:(UISlider *)slider
{
    self.reflectionView.reflectionAlpha = slider.value;
}

- (IBAction)updateGap:(UISlider *)slider
{
    self.reflectionView.reflectionGap = slider.value;
}

- (IBAction)updateScale:(UISlider *)slider
{
    self.reflectionView.reflectionScale = slider.value;
}

@end
