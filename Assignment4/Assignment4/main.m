//
//  main.m
//  Assignment4
//
//  Created by Nicolas Guerrero on 8/31/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tester.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *numbers = @[@2, @5, @64, @354, @90, @6, @234];
        
        NSNumber *tester = 0;

        for (int i = 0; i < (numbers.count); i++) {
            NSNumber *highest = numbers[i];

            if (highest > tester){
                tester= highest;
            }
        }

       NSLog(@"The highest number in this array is %@", tester);
    }
    return 0;
}
