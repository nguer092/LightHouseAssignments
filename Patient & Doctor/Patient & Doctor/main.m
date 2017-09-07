//
//  main.m
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Doctor *oz = [[Doctor alloc] initWithName:@"Oz" and:@"BrainSurgeon"];
        Patient *nick = [[Patient alloc] initWithName:@"Nick" and:25];
        
        [nick visitDoctor:oz];
        nick.healthCard = YES;
        [nick visitDoctor:oz];
        
    
        
        
    }
    return 0;
}
