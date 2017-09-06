//
//  QuestionFactory.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

-(Question *)generateRandomQuestion
{
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    
    int random = arc4random_uniform(3);
    NSString* questionTypeName = questionSubclassNames[random];
   
    return [[NSClassFromString(questionTypeName) alloc]init];
}

@end
