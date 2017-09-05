//
//  main.m
//  Boxes
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *one = [[Box alloc] initWithBoxData:3.1 and:2.45 and:1.56];
        Box *two = [[Box alloc] initWithBoxData:2.3 and:3.0 and:4.7];
        
        float volOne = [one volume];
        float volTwo = [two volume];
        
        NSLog(@"volume %f", volOne);
        NSLog(@"volume %f", volTwo);
        
        float fitTest = [one fits:two];
        NSLog(@"%f", fitTest);
        
        float fitTestTwo = [two fits:one];
        NSLog(@"%f", fitTestTwo);
        
        
    }
    return 0;
}
