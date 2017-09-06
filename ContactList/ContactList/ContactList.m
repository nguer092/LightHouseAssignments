//
//  ContactList.m
//  ContactList
//
//  Created by Nicolas Guerrero on 9/5/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList


-(instancetype)initWithArray:contactList{
    return contactList;
}

-(void)addContact:(Contact *)newContact
{
    [self.contactList addObject:newContact];
}

@end
