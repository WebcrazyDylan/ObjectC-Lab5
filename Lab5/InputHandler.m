//
//  InputHandler.m
//  Lab5
//
//  Created by Dylan Park on 2021-07-09.
//

#import "InputHandler.h"

@implementation InputHandler

- (instancetype) initInputLog {
    self.userInputLog = [NSMutableArray arrayWithObjects:@"initialLog", nil];
    return self;
}

- (void) addNewLog: (NSString *) newLog {
    [self.userInputLog addObject:newLog];
}

- (NSString *) returnLatestThreeLogs {
    NSString *logs;
    if ([self.userInputLog count] >= 3) {
        logs = [NSString stringWithFormat: @"%@\n%@\n%@\n", [self.userInputLog objectAtIndex:[self.userInputLog count] - 1], [self.userInputLog objectAtIndex:[self.userInputLog count] - 2], [self.userInputLog objectAtIndex:[self.userInputLog count] - 3]];
        NSLog(@"Check %@", [self.userInputLog objectAtIndex:[self.userInputLog count] - 1]);
    } else {
        for (int i = (int)[self.userInputLog count] - 1; i > 0; i--) {
            NSString * log = [self.userInputLog objectAtIndex:i];
            logs = [logs stringByAppendingString:[NSString stringWithFormat: @"%@\n", log]];
            NSLog(@"Check %@", [self.userInputLog objectAtIndex:[self.userInputLog count] - 1]);
        }
    }
    return logs;
}

@end
