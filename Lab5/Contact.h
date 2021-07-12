//
//  Contact.h
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString* name;
@property NSString* email;
@property NSMutableDictionary* phoneNumbers;

- (instancetype) initName: (NSString *) name AndEmail: (NSString *) email AndPhoneNumbers: (NSMutableDictionary *) phoneNumbers;


@end

NS_ASSUME_NONNULL_END
