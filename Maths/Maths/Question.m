//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init{
    if (self = [super init])
    {
        _leftVaule = arc4random_uniform(91) +10;
        _rightValue = arc4random_uniform(91) +10;
        
        _question = [NSString stringWithFormat:@"%li + %li ?", (long)_leftVaule, (long)_rightValue];
        
        _answer = (_leftVaule + _rightValue);
        
        _startTime = [NSDate date];
    }
    
    return self;
    
}

//Instead of passing in the endTime let's override the answer getter. When main.m calls AdditionQuestion for the answer, we can set the endTime then.

- (NSInteger)answer
{
    self.endTime = [NSDate date];
    return _answer;
                
}

//This method should return a calculated value based on the startTime and endTime. The return type is an NSTimeInterval.

-(NSTimeInterval)answerTime
{
    NSTimeInterval answerTime = [self.endTime timeIntervalSinceDate:self.startTime];
    return answerTime;
}

-(void)generateQuestion
{
    
}

@end
