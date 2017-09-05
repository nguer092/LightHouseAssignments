//
//  main.m
//  W1D2
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
//        
//        NSString *string1 = @"part1";
//        string1 = [string1 stringByAppendingString:@"part2"];
//        NSLog(@"%@", string1);
//        
//        NSMutableString *string2 = [NSMutableString stringWithString:@"part1"];
//        [string2 appendString:@"part2"];
//        NSLog(@"%@", string2);
        
        
//        NSString *testString = @"test";
//        NSLog(@"%@", testString);
//        
//        if (true) {
//            testString = @"test123";
//            NSLog(@"%@", testString);
//        }
//        
//        NSLog(@"%@", testString);
        
//        For loops Square sums
        
        
        
//        for(int i = 0; i <100; i++)
//        {
//            int s = (i * i);
//            int sum = s + (1 + i);
//            NSLog(@"%d", sum);
//        }
//        
        int sum = 0;
        for (int i =1; i <= 100; i ++){
            sum = [Calculator sumSqaure:sum withIndex:i];
            NSLog(@"%d", sum);
        }
        
        
    }
    
    return 0;
}
