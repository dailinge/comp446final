//
//  RCViewController.m
//  Accelerometer
//
//  Created by Heaven  Chen on 11/1/12.
//  Copyright (c) 2012 Rice. All rights reserved.
//

#import "RCViewController.h"

@interface RCViewController ()
@property (strong, nonatomic) UIAccelerometer *accelerometer;
@end

@implementation RCViewController
@synthesize labelX = _labelX;
@synthesize labelY = _labelY;
@synthesize labelZ = _labelZ;
@synthesize progressX = _progressX;
@synthesize progressY = _progressY;
@synthesize progressZ = _progressZ;
@synthesize accelerometer = _accelerometer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.accelerometer = [UIAccelerometer sharedAccelerometer];
    self.accelerometer.updateInterval = .1;
    self.accelerometer.delegate = self;
}

- (void)viewDidUnload
{
    [self setLabelX:nil];
    [self setLabelY:nil];
    [self setLabelZ:nil];
    [self setProgressX:nil];
    [self setProgressY:nil];
    [self setProgressZ:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration
{
    self.labelX = [NSString stringWithFormat:@"%@%f", @"X: ", acceleration.x];
    self.labelY = [NSString stringWithFormat:@"%@%f", @"Y: ", acceleration.y];
    self.labelZ = [NSString stringWithFormat:@"%@%f", @"Z: ", acceleration.z];
    
    self.progressX.progress = ABS(acceleration.x);
    self.progressY.progress = ABS(acceleration.y);
    self.progressZ.progress = ABS(acceleration.z);
}

@end
