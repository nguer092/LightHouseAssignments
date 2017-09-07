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


@end
