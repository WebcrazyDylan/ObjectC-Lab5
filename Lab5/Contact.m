//
//  Contact.m
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import "Contact.h"

@implementation Contact

- (instancetype) initName: (NSString *) name AndEmail: (NSString *) email AndPhoneNumbers: (NSMutableDictionary *) phoneNumbers {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
        _phoneNumbers = phoneNumbers;
    }
    return self;
}

@end
