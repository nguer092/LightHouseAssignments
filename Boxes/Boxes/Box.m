//
//  Box.m
//  Boxes
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "Box.h"

@implementation Box

- (instancetype)initWithBoxData:(float)height and:(float)width and: (float)length
{
    if (self = [super init]) {
        _height = height;
        _length = length;
        _width = width;
    }
    return self;
    
    
}


- (float)volume
{
    float vol = self.height * self.width * self.length;
    return vol;
}


@end
