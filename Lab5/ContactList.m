//
//  ContactList.m
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype) initContactList {
    NSMutableDictionary *dict0 = [NSMutableDictionary new];
    dict0[@"Home"] = @"0123456789";
    NSMutableDictionary *dict1 = [NSMutableDictionary new];
    dict1[@"Home"] = @"1234567890";
    dict1[@"Mobile"] = @"2345678901";
    _contactList = [NSMutableArray arrayWithObjects:[[Contact alloc] initName:@"Dylan" AndEmail:@"Dylan@gmail.com" AndPhoneNumbers: dict0], [[Contact alloc] initName:@"JongHyun" AndEmail:@"JongHyun@gmail.com" AndPhoneNumbers:dict1] , nil];
    return self;
}

- (void) addContact: (Contact *) newContact {
    [self.contactList addObject:newContact];
}

- (NSString *) returnContactList {
    NSString *fullContactList = @"";
    int i = 0;
    for (Contact *contact in self.contactList) {
        NSString *allPhoneNumber = @"";
        NSString *eachPhoneNumber = @"";
        for (NSString *label in [contact.phoneNumbers allKeys]) {
            eachPhoneNumber = [NSString stringWithFormat:@"%@: %@ ", label, contact.phoneNumbers[label]];
            allPhoneNumber = [allPhoneNumber stringByAppendingString:eachPhoneNumber];
        }
        NSString *eachContactDetail = [NSString stringWithFormat: @"%d:<%@>(%@){ %@}\n", i, contact.name, contact.email, allPhoneNumber];
        i++;
        fullContactList = [fullContactList stringByAppendingString:eachContactDetail];
    }
    return fullContactList;
}

- (NSString *) returnTargetContactDetail: (int) index {
    if (index < [self.contactList count]) {
        Contact *targetContact = [self.contactList objectAtIndex:index];
        NSString *allPhoneNumber = @"";
        NSString *eachPhoneNumber = @"";
        for (NSString *label in [targetContact.phoneNumbers allKeys]) {
            eachPhoneNumber = [NSString stringWithFormat:@"%@: %@ ", label, targetContact.phoneNumbers[label]];
            allPhoneNumber = [allPhoneNumber stringByAppendingString:eachPhoneNumber];
        }
        NSString *targetContactInfo = [NSString stringWithFormat: @"id: %d\nname: %@\nemail: %@\nphone numbers: { %@}\n", index, targetContact.name, targetContact.email, allPhoneNumber];
        return targetContactInfo;
    } else {
        return @"Not found.";
    }
}

- (NSString *) returnMatchedContacts: (NSString *) keyword {
    NSMutableArray *matchedContactsIndex = [NSMutableArray new];
    for (int i = 0; i < [self.contactList count]; i++) {
        Contact *eachContact = [self.contactList objectAtIndex:i];
        if ([[eachContact.name lowercaseString] containsString:[keyword lowercaseString]] || [[eachContact.email lowercaseString] containsString:[keyword lowercaseString]]) {
            [matchedContactsIndex addObject:[NSNumber numberWithInt:i]];
        }
    }
    NSString *matchedContactList = @"";
    for (int i = 0; i < [self.contactList count]; i++) {
        if ([matchedContactsIndex containsObject:[NSNumber numberWithInt:i]]) {
            Contact *eachContact = [self.contactList objectAtIndex:i];
            NSString *allPhoneNumber = @"";
            NSString *eachPhoneNumber = @"";
            for (NSString *label in [eachContact.phoneNumbers allKeys]) {
                eachPhoneNumber = [NSString stringWithFormat:@"%@: %@ ", label, eachContact.phoneNumbers[label]];
                allPhoneNumber = [allPhoneNumber stringByAppendingString:eachPhoneNumber];
            }
                
            NSString *eachContactDetail = [NSString stringWithFormat: @"%d:<%@>(%@)\nphone numbers: { %@}\n", i, eachContact.name, eachContact.email, allPhoneNumber];
            matchedContactList = [matchedContactList stringByAppendingString:eachContactDetail];
        }
    }
    if ([matchedContactList  isEqual: @""]) {
        return @"Not found.";
    }
    return matchedContactList;
}

- (BOOL) checkDuplicateEmail: (NSString *) newEmail {
    for (int i = 0; i < [self.contactList count]; i++) {
        Contact *eachContact = [self.contactList objectAtIndex:i];
        if ([eachContact.email  isEqual: newEmail]) {
            return YES;
        }
    }
    return NO;
}

@end
