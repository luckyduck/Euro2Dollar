//
//  main.swift
//  Euro2Dollar
//
//  Created by Jan Brinkmann on 02/07/16.
//  Copyright © 2016 Jan Brinkmann. All rights reserved.
//

import Foundation

let iohelper = IOHelper()

while true {
    print()
    
    let userInput = iohelper.newInput()
    guard let method = userInput else {
        continue
    }
    
    //
    if method == "h" {
        print(iohelper.usageInfo())
        continue
    }
    
    //
    let inputStr = iohelper.ask("Betrag: ")
    guard let betragInput = inputStr else {
        continue
    }
    
    guard let betrag = Double(betragInput) else {
        continue
    }
    
    if method == "d" {
        let euroBetrag = betrag * 0.897;
        print(NSString(format: "%.2f€", euroBetrag))
        
    } else if method == "e" {
        let dollarbetrag = betrag * 1.114;
        print(NSString(format: "%.2f$", dollarbetrag))
    }
}





