//
//  FahrenheitToCelsius.m
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "FahrenheitToCelsius.h"

@implementation FahrenheitToCelsius

-(int) fahrenheitToCelsius:(int)f{
    
    int c;
    
    c = (f - 32) / 1.8;
    
    return c;

}

@end
