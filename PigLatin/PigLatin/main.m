//
//  main.m
//  PigLatin
//
//  Created by Nicolas Guerrero on 9/8/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString * string = @"world wide";
        [string stringByPigLatinization];
        
    
    }
    return 0;
}
