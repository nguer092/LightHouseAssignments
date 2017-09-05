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
        
//        Uppercase
        
        NSString *capitalized = [inputStringObject uppercaseString];
        NSLog(@"Your LOUD STRING IS %@", capitalized);
        
//        Lowercase
        
        NSString *lower = [inputStringObject lowercaseString];
        NSLog(@"Your smaller string is %@", lower);
        
//        Numberize
        
        NSInteger numberize = [inputStringObject intValue];
        NSLog(@"Your numberized string is %ld", numberize);
        
//        Canadianize
        NSString *canadian = [inputStringObject stringByAppendingString:@"eh?"];
        NSLog(@"Your canadianized string is %@", canadian);
        
//        Response
        
        
//        De-space it
        NSString *despaced = [inputStringObject stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"Your despaced string is %@", despaced);
        
//        printf("What would you like to do with this string?\n");
//        printf("Make it LOUDER\n");
//        printf("make it smaller\n");
//        printf("Numberize it\n");
//        printf("Canadianize it\n");
//        printf("See a response\n");
//        printf("De-space it\n");
        
        
        
    }
    return 0;
}
