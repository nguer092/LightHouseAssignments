//
//  Toyota.m
//  AssignmentThree
//
//  Created by Nicolas Guerrero on 8/31/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Toyota.h"

@implementation Toyota

- (id)initWithModel:(NSString *)model
{
    self = [super init];
    
    if (self) {
        
        [self setModel:model];
    }
    return self;
}

- (id)init
{
    return [self initWithModel:@"Prius"];
}



@end
