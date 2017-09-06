//
//  Dice.h
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

//It should have a property to store its current value, and a method to randomize that value.

@property (nonatomic)NSInteger currentValue;

-(NSInteger)randomizeValue;

@end
