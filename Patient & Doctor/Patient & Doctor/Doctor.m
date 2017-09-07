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

-(instancetype)initWithName:(NSString *)name and:(NSString *)specialization{
        if (self = [super init]) {
            _name = name;
            _specialization = specialization;
            NSLog(@"%@", self);
        }
        return self;
    }


@end
