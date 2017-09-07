//
//  main.m
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char sayRoll [255];
        char hold [255];
        char sure [255];
        BOOL gameOn = YES;

//        Make five instances of the Dice class, randomize their values and print them
        
        Dice *diceOne = [[Dice alloc] init];
        Dice *diceTwo = [[Dice alloc] init];
        Dice *diceThree = [[Dice alloc] init];
        Dice *diceFour = [[Dice alloc] init];
        Dice *diceFive = [[Dice alloc] init];
        
        NSArray *diceSet = [[NSArray alloc] initWithObjects:diceOne, diceTwo, diceThree, diceFour, diceFive, nil];
        NSMutableArray *heldDice = [[NSMutableArray alloc] init];
        
//        Now that you have two collections that seem logically linked (your array of dice, and your collection of held dice), it's time to build a controller object that encapsulates them. Call this your GameController, and make the two collection objects properties of it.
//        You now have a data model and a controller.
        
        GameController *gameController = [[GameController alloc] init];
        gameController.diceSet = diceSet;
        gameController.heldDice = heldDice;
        
//        Threelow
        NSLog(@"Welcome to Threelow");
        
        while (gameOn) {
            
        NSLog(@"Roll the dice");
        
        fgets(sayRoll, 255 ,stdin);
        
        NSString *roll = [NSString stringWithCString:sayRoll encoding:NSUTF8StringEncoding];
        roll = [roll stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        if ([roll  isEqual: @"roll"]){
            [diceOne randomizeValue];
            [diceTwo randomizeValue];
            [diceThree randomizeValue];
            [diceFour randomizeValue];
            [diceFive randomizeValue];
        }
            NSLog(@"Do you want to hold any of die from 1-5? Which one?");
            
            fgets(hold, 255, stdin);
            
            NSString *holdDice = [NSString stringWithCString:hold encoding:NSUTF8StringEncoding];
            holdDice = [holdDice stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            int holding = [holdDice intValue];

            NSLog(@"You are holding dice [%i] , are you sure you want to hold this die? Yes or No?", holding);
            
            fgets(sure, 255, stdin);
            
            NSString *sureDice = [NSString stringWithCString:sure encoding:NSUTF8StringEncoding];
            sureDice = [sureDice stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([sureDice isEqual: @"yes"]){

            [gameController heldDie:holding];
            
            NSLog(@"You are holding dice [%i]", holding);
                
            
            } else {
                NSLog(@"You are no longer holding any die");
                
            }
}
    return 0;
}
}
