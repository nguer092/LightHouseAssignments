//
//  Car.h
//  AssignmentThree
//
//  Created by Nicolas Guerrero on 8/30/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (nonatomic) NSString *model;

//Methods
- (void)drive;

- (id)initWithModel:(NSString *)model;

@end
