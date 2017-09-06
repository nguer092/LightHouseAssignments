//
//  GameController.h
//  Threelow
//
//  Created by Nicolas Guerrero on 9/6/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject


@property (nonatomic) NSArray * diceSet;
@property (nonatomic) NSMutableArray * heldDice;

-(void)heldDie: (int)index;

@end
