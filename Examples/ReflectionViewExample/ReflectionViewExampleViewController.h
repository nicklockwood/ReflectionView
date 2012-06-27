//
//  ReflectionViewExampleViewController.h
//  ReflectionViewExample
//
//  Created by Nick Lockwood on 23/07/2011.
//  Copyright 2011 Charcoal Design. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ReflectionView.h"


@interface ReflectionViewExampleViewController : UIViewController

@property (nonatomic, retain) IBOutlet ReflectionView *reflectionView;

- (IBAction)toggleDynamic:(UISwitch *)sender;
- (IBAction)updateAlpha:(UISlider *)slider;
- (IBAction)updateGap:(UISlider *)slider;
- (IBAction)updateScale:(UISlider *)slider;

@end
