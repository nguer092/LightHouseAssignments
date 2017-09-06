//
//  DivisionQuestion.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "DivisionQuestion.h"

@implementation DivisionQuestion

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
    self.question = [NSString stringWithFormat:@"%li / %li ?", (long)self.leftVaule, (long)self.rightValue];
    
    self.answer = (self.leftVaule / self.rightValue);
}

@end
