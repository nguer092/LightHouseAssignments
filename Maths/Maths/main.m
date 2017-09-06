//
//  main.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];
        
        while (gameOn){
        
        AdditionQuestion *mainQ = [[AdditionQuestion alloc] init];
   
        NSLog(@"%@", mainQ.question);
        
        
        NSLog(@"What is the answer?");
        
            
        InputHandler *result = [[InputHandler alloc] init];
            
        NSString *parsedResult = [result parsed];
            
        
        NSInteger userInput = [parsedResult intValue];
            
        if([parsedResult isEqualToString:@"quit"])
            {
                gameOn = NO;
                break;
            }
        
        if (mainQ.answer == userInput)
        {
            NSLog(@"Right!");
            score.right ++;
            [score score];
            
        } else
        {
            NSLog(@"Wrong!");
            score.wrong ++;
            [score score];
        }

        }
        
    }
        NSLog(@"Thank you for playing");
    
    return 0;
}

