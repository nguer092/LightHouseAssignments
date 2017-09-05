//
//  main.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        while (gameOn){
        
        AdditionQuestion *mainQ = [[AdditionQuestion alloc] init];
   
        NSLog(@"%@", mainQ.question);
        
        char stringOne [255];
        
        NSLog(@"What is the answer?");
        
        fgets(stringOne, 255, stdin);
        
        NSString *result = [NSString stringWithCString:stringOne encoding:NSUTF8StringEncoding];
        
        NSInteger userInput = [result intValue];
            
        if((result = @"quit"))
            {
                gameOn = NO;
                break;
            }
        
        if (mainQ.answer == userInput)
        {
            NSLog(@"Right!");
        } else
        {
            NSLog(@"Wrong!");
        }

        }
    }
        NSLog(@"Thank you for playing");
    
    return 0;
}

