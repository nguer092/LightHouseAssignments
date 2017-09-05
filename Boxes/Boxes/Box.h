//
//  Box.h
//  Boxes
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject

//Add three properties (height, width, and length) and make each member a float.

@property float height;

@property float width;

@property float length;

//Create an instance method that initializes a Box by taking in three floats as parameters. An instance method is a method that applies to a specific instance of a
//Box, it has a “-” sign at the start of the function name.

- (instancetype)initWithBoxData:(float)height and:(float)width and: (float)length;


//Create a instance method that will calculate the volume and return it as a float. You refer to the properties of an instance by prefixing “self.”

- (float)volume;

// Add a method that takes in another box and returns how many times one box will fit inside the other.

- (float)fits:(Box *)boxOne;

@end
