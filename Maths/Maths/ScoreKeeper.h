//
//  ScoreKeeper.h
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property NSInteger right;
@property NSInteger wrong;

-(void)score;

-(instancetype)init;

@end
