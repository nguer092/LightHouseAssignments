//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

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
    super.question = [NSString stringWithFormat:@"%li - %li ?", (long)self.leftVaule, (long)self.rightValue];
    super.answer = (self.leftVaule - self.rightValue);
    
}

@end
