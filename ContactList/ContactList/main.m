//
//  main.m
//  ContactList
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        while (gameOn){
  
        NSString *menu = [InputCollector inputForPrompt:@"What would you like do next? new - Create a new contact; list - List all contacts; quit - Exit Application"];
        
        NSLog(@"%@", menu);
            
        InputHandler *result = [[InputHandler alloc] init];
        NSString *parsedResult = [result parsed];
            
            if([parsedResult isEqualToString:@"quit"])
            {
                gameOn = NO;
                NSLog(@"Goodbye quitter!");
                break;
            }
            
    }
    }
    return 0;
}
