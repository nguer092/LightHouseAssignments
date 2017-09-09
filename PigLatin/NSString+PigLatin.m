//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Nicolas Guerrero on 9/8/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

//Here's how it works: take any word in the English language and move the first consonant (or group of consonants)
//if they are to the end of the word, then add and an ‘ay' to the end. So if we took ‘Kale Chips' it would become ‘Alekay Ipschay'.



-(NSString *)stringByPigLatinization{
    
    NSIndexSet *vowelsInEnglishStr = @"aeiou";
    
    NSString *newString; = [vowelsInEnglishStr characterAtIndex:[0-5];
    if ( [[newString characterAtIndex:0] isEqualToString:@"*"] ) {
        newString = [myString substringFromIndex:1];
    }

    if (self hasPrefix:newString
        
    
    
    return self;
    
        
    


    
}



@end

