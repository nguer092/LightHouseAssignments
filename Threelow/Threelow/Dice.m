//
//  Dice.m
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Dice.h"

@implementation Dice

//It should have a property to store its current value, and a method to randomize that value.

-(NSInteger)randomizeValue
{
    self.currentValue = arc4random_uniform(5)+1;
    
    NSLog(@"%li",self.currentValue);
    
    return _currentValue;
    
    
}

@end
