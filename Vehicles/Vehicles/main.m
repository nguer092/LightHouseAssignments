//
//  main.m
//  Vehicles
//
//  Created by Nicolas Guerrero on 9/9/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

            Vehicle *vehicle = [[Vehicle alloc] init];
            //Test methods with implementations
            NSLog(@"Vehicle turn: %@", [vehicle turn:700]);
            NSLog(@"Vehicle change gears: %@", [vehicle changeGears:@"Test"]);
            
            //Test methods without implementations
            NSLog(@"Vehicle make noise: %@", [vehicle makeNoise]);
            NSLog(@"Vehicle go forward: %@", [vehicle goForward]);
            NSLog(@"Vehicle go backward: %@", [vehicle goBackward]);
            NSLog(@"Vehicle stop moving: %@", [vehicle stopMoving]);
        
            Car *car = [[Car alloc] init];
            NSLog(@"Vehicle make noise: %@", [car makeNoise]);
            NSLog(@"Vehicle go forward: %@", [car goForward]);
            NSLog(@"Vehicle go backward: %@", [car goBackward]);
            NSLog(@"Vehicle stop moving: %@", [car stopMoving]);
        
  
    }
    return 0;
}
