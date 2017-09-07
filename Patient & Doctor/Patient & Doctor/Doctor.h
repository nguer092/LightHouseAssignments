//
//  Doctor.h
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Doctor : NSObject

@property (nonatomic, assign) NSString * name;
@property (nonatomic, assign) NSString * specialization;
-(instancetype)initWithName:(NSString *)name and:(NSString *)specialization;


//The doctor should keep track of all their accepted patients. Think about which collection type is best suited to this task.

@property (nonatomic, strong) NSMutableSet *acceptedPatients;


//Anyway, once the doctor writes the prescription, before handing it the patient, the doctor should add it the collection of prescriptions written by any doctor. What type of collection is best suited to this problem?

@property (nonatomic, strong) NSMutableDictionary *prescriptionList;

@end
