//
//  Result.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-08.
//

import SwiftUI

struct Result: Identifiable {
    
    let id = UUID()
    let area: String
    let bagsNeeded: String
    let cost: String
    
}

var examplecalc = Result(area: "7", bagsNeeded: "7", cost: "200")

var secondexamplecalc = Result(area: "10", bagsNeeded: "8", cost: "250")

var historyForPreviews = [examplecalc, secondexamplecalc]
