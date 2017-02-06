//
//  TemperatureConverter.m
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "TemperatureConverter.h"

@implementation TemperatureConverter

-(float) fahrenheitToCelsius:(float)f{
    
    float c;
    c = (f - 32) / 1.8;
    return c;
}

-(float) celsiusToFahrenheit:(float)c{
    
    float f;
    f = c * 1.8 + 32;
    return f;
}

@end
