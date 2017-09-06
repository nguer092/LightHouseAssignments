//
//  AdditionQuestion.h
//  Maths
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

- (instancetype)init;

@property (nonatomic) NSString *question;
@property (nonatomic) NSInteger answer;
@property (nonatomic) NSDate *startTime;
@property (nonatomic) NSDate *endTime;

-(NSTimeInterval)answerTime;

@property (nonatomic) NSInteger leftVaule;
@property (nonatomic) NSInteger rightValue;

-(void)generateQuestion;

@end
