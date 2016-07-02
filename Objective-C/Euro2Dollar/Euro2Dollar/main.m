//
//  main.m
//  Euro2Dollar
//
//  Created by Jan Brinkmann on 02/07/16.
//  Copyright © 2016 Jan Brinkmann. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IOHelper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        IOHelper *iohelper = [[IOHelper alloc] init];
        
        while (true) {
            printf("\n");
            
            //
            NSString *userInput = [iohelper newInput];
            if ([userInput length] < 1) {
                continue;
            }
            
            //
            if ([userInput isEqualToString:@"h"]) {
                printf("%s\n", [[iohelper usageInfo] UTF8String]);
                continue;
            }
            
            //
            NSString *inputStr = [iohelper ask:@"Betrag: "];
            if ([inputStr length] < 1) {
                continue;
            }
            
            double inputZahl = [inputStr doubleValue];
            
            if ([userInput isEqualToString:@"d"]) {
                double euroBetrag = inputZahl * 0.897;
                printf("%.2f€\n", euroBetrag);
                
            } else if ([userInput isEqualToString:@"e"]) {
                double dollarbetrag = inputZahl * 1.114;
                printf("%.2f$\n", dollarbetrag);
            }

            
        }
    }
    return 0;
}
