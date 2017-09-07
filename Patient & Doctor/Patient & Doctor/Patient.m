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


-(instancetype)initWithName:(NSString *)name and:(int)age{
    if (self = [super init]) {
        _name = name;
        _age = age;
        NSLog(@"%@", self);
    }
    return self;
}

@end
