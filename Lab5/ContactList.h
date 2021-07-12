//
//  ContactList.h
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property NSMutableArray *contactList;

- (instancetype) initContactList;

- (void) addContact: (Contact *) newContact;
- (NSString *) returnContactList;
- (NSString *) returnTargetContactDetail: (int) index;
- (NSString *) returnMatchedContacts: (NSString *) keyword;
- (BOOL) checkDuplicateEmail: (NSString *) newEmail;

@end

NS_ASSUME_NONNULL_END
