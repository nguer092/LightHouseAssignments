//
//  Patient.h
//  Patient & Doctor
//
//  Created by Nicolas Guerrero on 9/7/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject

@property (nonatomic, assign) int age;
@property (nonatomic, assign) NSString * name;
-(instancetype)initWithName:(NSString *)name and:(int)age;


@end
