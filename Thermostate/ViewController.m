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



- (IBAction)segmentSwitch:(id)sender {
    
    CelsiusToFahrenheit *celciusToFahrenheit = [[CelsiusToFahrenheit alloc]init];
    int fahrenheit = [celciusToFahrenheit celsiusToFahrenheit:(int)self.currentTemperatureSlider.value];
    
    FahrenheitToCelsius *fahrenheitToCelsius = [[FahrenheitToCelsius alloc]init];
    int celsius = [fahrenheitToCelsius fahrenheitToCelsius: (int)self.currentTemperatureSlider.value];
    
    if (segmentedControl.selectedSegmentIndex == 0) {
        
        self.currentTemperatureSlider.value = fahrenheit;
        self.currentTemperatureLabel.text = [NSString stringWithFormat: @"%d °F", (int)self.currentTemperatureSlider.value];

    } else {
        
        self.currentTemperatureSlider.value = celsius;
        self.currentTemperatureLabel.text = [NSString stringWithFormat: @"%d °C", (int)self.currentTemperatureSlider.value];
        
    }

}



-(IBAction) temperatureSlider:(id)sender{
    
    int temperature = self.currentTemperatureSlider.value;
    
    self.currentTemperatureLabel.text = [NSString stringWithFormat:@"%d", temperature];

}

//        if (self.currentTemperatureSlider.value > 90){
//            self.view.backgroundColor = [UIColor redColor];
//        } else if (self.currentTemperatureSlider.value <20){
//            self.view.backgroundColor = [UIColor blueColor];
//        } else {
//            self.view.backgroundColor = [UIColor whiteColor];
//        }



@end
