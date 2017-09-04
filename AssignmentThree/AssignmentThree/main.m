//
//  main.m
//  AssignmentThree
//
//  Created by Nicolas Guerrero on 8/29/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "Toyota.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *nissan = [[Car alloc] initWithModel:@"Rogue"];
        
        Toyota *toyota = [[Toyota alloc] init];
        
//        nissan.model = @"Rogue";
        
        [nissan drive];
        
        [toyota drive];
      
    }
    return 0;
}
