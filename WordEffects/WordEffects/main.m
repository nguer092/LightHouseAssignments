//
//  main.m
//  WordEffects
//
//  Created by Nicolas Guerrero on 9/4/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        
        char inputChars [255];
        
        NSString *inputString = @"Input a string: ";
        
        NSLog(@"%@", inputString);
        
        fgets(inputChars, 255, stdin);
        
        printf("Your string is %s\n", inputChars);
        
//        Convert char array into an NSString object
        
        NSString *inputStringObject = [NSString stringWithUTF8String:inputChars];
        
        NSLog(@"Input was %@", inputStringObject);
        
        
        
        
    }
    return 0;
}
