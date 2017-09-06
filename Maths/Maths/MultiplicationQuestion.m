//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion

-(instancetype)init
{
    if (self = [super init])
    {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion
{
    self.question = [NSString stringWithFormat:@"%li x %li ?", (long)self.leftVaule, (long)self.rightValue];
    
    self.answer = (self.leftVaule * self.rightValue);
}

@end
