//
//  Doctor.m
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Doctor.h"

@implementation Doctor

-(NSString *) description {
    return [NSString stringWithFormat:@"Doctors name and age: %@ - %@", _name, _specialization];
}


//Create custom initializers for both the Doctor and Patient class. Use the custom initializer to signal to other coders using your classes how they are to be used.

-(instancetype)initWithName:(NSString *)name and:(NSString *)specialization{
        if (self = [super init]) {
            _name = name;
            _specialization = specialization;
            NSLog(@"%@", self);
        }
        return self;
    }

- (NSMutableSet *)acceptedPatients {
    if (!_acceptedPatients) {
        _acceptedPatients = [[NSMutableSet alloc] init];
    }
    
    return _acceptedPatients;
}


@end
