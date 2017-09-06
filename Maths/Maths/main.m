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
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
//            Score instance outside of loop, because it cannot be recreated every loop, it needs to keep count
        
        ScoreKeeper *score = [[ScoreKeeper alloc] init];

//        QuestionManager instance , which comes initialized with an empty array property called questions
        
        QuestionManager * questionManager = [[QuestionManager alloc] init];
        
        QuestionFactory * questionFactory = [[QuestionFactory alloc] init];
        
        
//        Start game loop
        
        while (gameOn){
        
//            Create an instance of the questin and log it
            
            Question *mainQ = [questionFactory generateRandomQuestion];
            
        
//            Make sure to add each question to the questions array
            
            [questionManager.questions addObject:mainQ];
   
        NSLog(@"%@", mainQ.question);
            
//            Create an instance of Inputhandler and call the "parsed" instance method, which fgets user input in C and parses it to objective C
            
        InputHandler *result = [[InputHandler alloc] init];
            
        NSString *parsedResult = [result parsed];
            
//            Convert the parsed string into and integer value
        
        NSInteger userInput = [parsedResult intValue];
            
//            Use the answer to flow through scoring logic
            
        if([parsedResult isEqualToString:@"quit"])
            {
                gameOn = NO;
                break;
            }
        
        if (mainQ.answer == userInput)
        {
            NSLog(@"Good job!");
//            Update the score instance, and log it by calling the score instance method on it
            score.right ++;
            [score score];
            [questionManager timeOutput];
            
        } else
        {
            NSLog(@"Wrong!");
            score.wrong ++;
            [score score];
            [questionManager timeOutput];
        }

                        }
        NSLog(@"Once a quitter, always a quitter! Goodbye.");
    return 0;
}
}
