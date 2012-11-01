//
//  RCViewController.h
//  Accelerometer
//
//  Created by Heaven  Chen on 11/1/12.
//  Copyright (c) 2012 Rice. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RCViewController : UIViewController <UIAccelerometerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelX;
@property (weak, nonatomic) IBOutlet UILabel *labelY;
@property (weak, nonatomic) IBOutlet UILabel *labelZ;

@property (weak, nonatomic) IBOutlet UIProgressView *progressX;
@property (weak, nonatomic) IBOutlet UIProgressView *progressY;
@property (weak, nonatomic) IBOutlet UIProgressView *progressZ;


@end
