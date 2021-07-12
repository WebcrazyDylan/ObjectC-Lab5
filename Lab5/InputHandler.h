//
//  InputHandler.h
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject

@property NSMutableArray* userInputLog;

- (instancetype) initInputLog;

- (void) addNewLog: (NSString *) newLog;
- (NSString *) returnLatestThreeLogs;

@end

NS_ASSUME_NONNULL_END
