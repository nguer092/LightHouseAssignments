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

//The doctor instance should be able to accept a patient. In order for the doctor to accept the patient, the patient must have a valid health card.
//When the patient visits the doctor the doctor will ask them if they have a health card.

-(void)visitDoctor:(Doctor *)doctor{
    
    BOOL accept = YES;
    
    NSLog(@"The doctor is asking for your healthcard. You must possess a valid healthcard in order to visit doctors.");
    
    if (self.healthCard){
        accept = YES;
        [doctor.acceptedPatients addObject: self.name];
        NSLog(@"The doctor has accepted the visit request.");
    } else {
        accept = NO;
        NSLog(@"Sorry, you need a valid healthcard to visit this doctor");
    }
}

//Only patients previously accepted by that doctor can ask for prescriptions In order for the doctor to create and return a prescription to the patient, the doctor needs to know what symptoms the patient is currently experiencing. This will affect what is prescribed.


-(void)requestMedication:(Doctor *)doctor{
    if  ([doctor.acceptedPatients containsObject:self.name]){
        
        NSLog(@"What symptons are you experiencing??");
        
        char userSymptons [255];
        
        fgets(userSymptons, 255, stdin);
        
        NSString *symptons = [NSString stringWithCString:userSymptons encoding:NSUTF8StringEncoding];
        
        symptons = [symptons stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        
        NSLog(@"Here are your medications for %@", symptons);
        
    } else {
        NSLog(@"Sorry I can only prescribe medications to existing patients.");
    }
}

@end
