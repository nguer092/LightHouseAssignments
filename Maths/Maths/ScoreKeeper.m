//
//  ScoreKeeper.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(instancetype)init
{
    if (self = [super init])
    {
        _right = 0;
        _wrong = 0;
        
    }
    
    return self;
}

-(void)score
{
    
    NSLog(@"You have %ld right and %ld wrong", self.right, self.wrong);
}

@end
