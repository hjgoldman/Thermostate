//
//  ViewController.h
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TemperatureConverter.h"

@interface ViewController : UIViewController

@property (nonatomic,weak) IBOutlet UILabel *currentTemperatureLabel;
@property (nonatomic,weak) IBOutlet UISlider *currentTemperatureSlider;
@property (nonatomic,weak) IBOutlet UISegmentedControl *segmentedControl;

@end

