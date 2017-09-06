//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype) init{
    if (self = [super init])
    {
        int r = arc4random_uniform(91) +10;
        int s = arc4random_uniform(91) +10;
        
        NSString *questionAsk = [NSString stringWithFormat:@"What is %i + %i ?", r, s];
        
        _question = questionAsk;
        
        _answer = (r+s);
        
        _startTime = [NSDate date];
        
    }
    
    return self;
    
}

//Instead of passing in the endTime let's override the answer getter. When main.m calls AdditionQuestion for the answer, we can set the endTime then.

- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
                
}

//This method should return a calculated value based on the startTime and endTime. The return type is an NSTimeInterval.

-(NSTimeInterval)answerTime
{
    NSTimeInterval answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return answerTime;
    
}

@end
