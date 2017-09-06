//
//  InputHandler.m
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *)parsed
{
    char stringOne [255];
    
    fgets(stringOne, 255, stdin);
    
    NSString *result2 = [NSString stringWithCString:stringOne encoding:NSUTF8StringEncoding];
    
    result2 = [result2 stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result2;
    
}

@end
