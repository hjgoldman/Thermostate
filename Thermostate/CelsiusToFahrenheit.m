//
//  CelsiusToFahrenheit.m
//  Thermostate
//
//  Created by Hayden Goldman on 2/6/17.
//  Copyright © 2017 Hayden Goldman. All rights reserved.
//

#import "CelsiusToFahrenheit.h"

@implementation CelsiusToFahrenheit

-(int) celsiusToFahrenheit:(int)c {
    
    int f;
    
    f = c * 1.8 + 32;
    
    return f;
}

@end
