//
//  main.m
//  Boxes
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Box *one = [[Box alloc] initWithBoxData:3.1 and:2.45 and:1.56];
        NSLog(@"%@", one);
        
        float vol = [one boxVolume];
        NSLog(@"volume %f", vol);
        
    }
    return 0;
}
