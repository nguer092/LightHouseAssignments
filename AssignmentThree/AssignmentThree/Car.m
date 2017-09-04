//
//  Car.m
//  AssignmentThree
//
//  Created by Nicolas Guerrero on 8/30/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Car.h"

@implementation Car

- (void)drive
{
    NSLog(@"The model of the car you are driving is %@", self.model);
}

- (id)initWithModel:(NSString *)model
{
    self = [super init];
    
    if (self) {
        _model = model;
    }
    return self;
    }
    
    

@end

