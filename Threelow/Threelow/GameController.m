//
//  GameController.m
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "GameController.h"

@implementation GameController


//Add a method to your controller called holdDie:, that "holds" the given dice (by number).
//After each roll, allow the user to input dice indexes to hold them.


-(void)heldDie: (int)index
{
    [self.heldDice addObject:self.diceSet[index]];
}

@end
