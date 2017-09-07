//
//  Patient.m
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(NSString *) description {
    return [NSString stringWithFormat:@"Patient name and age: %@ - %d", _name, _age];
}


//Create custom initializers for both the Doctor and Patient class. Use the custom initializer to signal to other coders using your classes how they are to be used.

-(instancetype)initWithName:(NSString *)name and:(int)age{
    if (self = [super init]) {
        _name = name;
        _age = age;
        NSLog(@"%@", self);
    }
    return self;
}

//A patient should be able to visit a doctor. Tip: This is an action that the patient is executing and requires an instance of a doctor to do so.
//The doctor instance should be able to accept a patient. In order for the doctor to accept the patient, the patient must have a valid health card.
//When the patient visits the doctor the doctor will ask them if they have a health card.

-(void)visitDoctor:(Doctor *)doctor{
    
    BOOL accept = YES;;
    
    NSLog(@"The doctor is asking for your healthcard. You must possess a valid healthcard in order to visit doctors.");
    
    if (self.healthCard){
        accept = YES;
        [doctor.acceptedPatients addObject: self];
        NSLog(@"The doctor has accepted the visit request.");
    } else {
        accept = NO;
        NSLog(@"Sorry, you need a valid healthcard to visit this doctor");
    }
}




@end
