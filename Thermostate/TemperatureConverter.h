//
//  TemperatureConverter.h
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TemperatureConverter : NSObject

-(float) fahrenheitToCelsius:(float)f;
-(float) celsiusToFahrenheit:(float)c;

@end
