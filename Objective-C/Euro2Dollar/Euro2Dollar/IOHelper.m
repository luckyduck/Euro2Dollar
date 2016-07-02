//
//  IOHelper.m
//  Bucketlist
//
//  Created by Jan Brinkmann on 28/06/16.
//  Copyright © 2016 Jan Brinkmann. All rights reserved.
//

#import "IOHelper.h"
#import <readline/readline.h>

@implementation IOHelper

- (NSString *)newInput
{
    printf("Willkommen! Gib 'h' für Infos zur Nutzung ein\n");
    
    NSString *input = [self ask:@":> "];
    return input;
}

- (NSString *)ask:(NSString *)theQuestion
{
    printf("%s", [theQuestion UTF8String]);
    return [self getInput];
}

- (NSString *)usageInfo
{
    return [NSString stringWithFormat:@"%@\n%@\n%@\n", @"Bitte wählen:",
        @"d: dollar zu euro",
        @"e: euro zu dollar"];
}

- (NSString *)getInput
{
    NSString *input = [NSString stringWithUTF8String:readline(NULL)];
    
    return input;
}
@end
