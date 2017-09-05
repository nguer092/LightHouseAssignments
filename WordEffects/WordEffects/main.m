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

        int choice;
        BOOL play = YES;
        char inputChars [255];
        
        while (play) {
            
        NSString *inputString = @"\nInput a string: ";
        
        NSLog(@"%@", inputString);
        
        fgets(inputChars, 255, stdin);
        
        printf("\nYour string is %s\n", inputChars);
        
        printf("What would you like to do with this string?\n");
        printf("Make it LOUDER - Type 1\n");
        printf("make it smaller - Type 2\n");
        printf("Numberize it - Type 3\n");
        printf("Canadianize it - Type 4\n");
        printf("See a response - Type 5\n");
        printf("De-space it - Type 6\n");
        scanf("%d", &choice);
        
        
        //        Convert char array into an NSString object
        
        NSString *inputStringObject = [NSString stringWithUTF8String:inputChars];
        
        //        Uppercase
        
        NSString *capitalized = [inputStringObject uppercaseString];
        
        
        //        Lowercase
        
        NSString *lower = [inputStringObject lowercaseString];
        
        
        //        Numberize
        
        NSInteger numberize = [inputStringObject intValue];
        
        
        //        Canadianize
        NSString *canadian = [inputStringObject stringByAppendingString:@"eh?"];
        
        
        //        Response

        
        //        De-space it
        NSString *despaced = [inputStringObject stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        
        
        
        switch (choice) {
            case 1:
            NSLog(@"Your LOUD STRING IS %@", capitalized);
            break;
            case 2:
            NSLog(@"Your smaller string is %@", lower);
            break;
            case 3:
            NSLog(@"Your numberized string is %ld", numberize);
            case 4:
            NSLog(@"Your canadianized string is %@", canadian);
            case 5:
            if ([inputStringObject containsString:@"?"]){
                NSLog(@"I dont know.");
            } else if  ([inputStringObject containsString:@"!"]) {
                NSLog(@" Woah buddy, calm down!");
            };
            case 6:
            NSLog(@"Your despaced string is %@", despaced);
            break;
            default:
            break;
        }
            
        }

        
        
        
    }
    return 0;
}
