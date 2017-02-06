//
//  ViewController.m
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize segmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)segmentSwitch:(id)sender{
    
    TemperatureConverter *temperatureConverter = [[TemperatureConverter alloc]init];
    
    float fahrenheit = [temperatureConverter celsiusToFahrenheit:(float)self.currentTemperatureSlider.value];
    float celsius = [temperatureConverter fahrenheitToCelsius:(float)self.currentTemperatureSlider.value];
    
    if (segmentedControl.selectedSegmentIndex == 0){
        self.currentTemperatureSlider.value = fahrenheit;
        self.currentTemperatureLabel.text = [NSString stringWithFormat: @"%.0f °F", (float)self.currentTemperatureSlider.value];
    } else {
        self.currentTemperatureSlider.value = celsius;
        self.currentTemperatureLabel.text = [NSString stringWithFormat: @"%.0f °C", (float)self.currentTemperatureSlider.value];
    }
}

-(IBAction) temperatureSlider:(id)sender{
    
    float temperature = self.currentTemperatureSlider.value;
    
    if (segmentedControl.selectedSegmentIndex == 0){
        self.currentTemperatureLabel.text = [NSString stringWithFormat:@"%.0f °F", temperature];
    } else {
        self.currentTemperatureLabel.text = [NSString stringWithFormat:@"%.0f °C", temperature];
    }
    
    //Changes the background color when the value is set above or below a certain temperature
    if (self.currentTemperatureSlider.value > 90 && segmentedControl.selectedSegmentIndex == 0){
        self.view.backgroundColor = [UIColor redColor];
    } else if (self.currentTemperatureSlider.value < 20 && segmentedControl.selectedSegmentIndex == 0){
        self.view.backgroundColor = [UIColor blueColor];
    } else if (self.currentTemperatureSlider.value > 32 && segmentedControl.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor redColor];
    } else if (self.currentTemperatureSlider.value < -6 && segmentedControl.selectedSegmentIndex == 1){
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
}

@end
