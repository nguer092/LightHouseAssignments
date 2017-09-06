//
//  QuestionManager.h
//  Maths
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray* questions;

-(NSString *)timeOutput;

@end
