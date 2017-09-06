//
//  QuestionManager.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

//You will need to initialize this property to an empty array. Do so by overriding the QuestionManager's init method.

- (instancetype)init
{
    self = [super init];
    {
        _questions = [[NSMutableArray alloc]init];
    
    }
    return self;
}

-(NSString *)timeOutput
{
    int tot = 0;
    int avg = 0;
    for (int i = 1; i < self.questions.count; i++)
    {
        int t = [self.questions[i] answerTime];
        tot = tot + t;
        avg = (t * i) / i;
    }
    NSString *timeOutput;
    NSLog(@"Your total time is %i & the average time is %i", tot, avg);

    return timeOutput;
}


@end
