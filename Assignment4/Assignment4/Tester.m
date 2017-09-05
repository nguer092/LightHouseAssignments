//
//  Tester.m
//  Assignment4
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Tester.h"

@implementation Tester

+ (NSNumber *)tester:(NSArray *)number;

{
    
    NSNumber *tester = 0;
    
    for (int i = 0; i < (number.count); i++) {
        NSNumber *highest = number[i];
        
        if (highest > tester){
            tester= highest;
        }
    }
    return tester;
}

@end
