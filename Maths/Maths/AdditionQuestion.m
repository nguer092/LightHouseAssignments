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
        int r = arc4random_uniform(100);
        int s = arc4random_uniform(100);
        
        NSString *questionAsk = [NSString stringWithFormat:@"%i + %i ?", r, s];
        
        _question = questionAsk;
        
        _answer= (r+s);
        
    }
    
    return self;
    
}
@end
