//
//  main.m
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char stringOne [255];
        
        BOOL gameOn = YES;

//        Make five instances of the Dice class, randomize their values and print them
        
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        NSLog(@"Welcome to Threelow");
        
        while (gameOn) {
        NSLog(@"Roll the dice");
        
//        When a user inputs the word roll, randomize the values and print them.
        
        fgets(stringOne, 255 ,stdin);
        
        NSString *roll = [NSString stringWithCString:stringOne encoding:NSUTF8StringEncoding];
        roll = [roll stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([roll  isEqual: @"roll"]){
            [diceOne randomizeValue];
            [diceTwo randomizeValue];
            [diceThree randomizeValue];
            [diceFour randomizeValue];
            [diceFive randomizeValue];
        }

    }
    
    return 0;
}
}
