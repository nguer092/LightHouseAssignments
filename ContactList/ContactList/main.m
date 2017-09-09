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
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        ContactList *phoneBook = [[ContactList alloc] init];
        
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
            
            else if([parsedResult isEqualToString:@"new"])
            {
                NSLog(@"Enter the name of the contact you wish to add");
                InputHandler *contactName = [[InputHandler alloc] init];
                NSString *parsedContactName = [contactName parsed];
                NSLog(@"Enter the email of the contact you wish to add");
                InputHandler *contactEmail = [[InputHandler alloc] init];
                NSString *parsedContactEmail = [contactEmail parsed];
                
                Contact *newContact = [[Contact alloc] init];
                newContact.name = parsedContactName;
                newContact.email = parsedContactEmail;
                
                [phoneBook addContact:newContact];
                NSLog(@"%@", phoneBook.contactList);
            
            } else if ([parsedResult isEqualToString:@"list"])
            {
                
                NSLog(@"%@", phoneBook.contactList);
                
            }
            
            
    }
    }
    return 0;
}
