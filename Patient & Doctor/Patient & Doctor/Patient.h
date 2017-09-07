//
//  Patient.h
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, assign) int age;
@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) BOOL healthCard;
-(instancetype)initWithName:(NSString *)name and:(int)age;

//A patient should be able to visit a doctor. Tip: This is an action that the patient is executing and requires an instance of a doctor to do so.

-(void)visitDoctor:(Doctor *)doctor;

@end
