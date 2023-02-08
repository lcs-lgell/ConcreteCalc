//
//  ResultView.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-08.
//

import SwiftUI

struct ResultView: View {
    
    // MARK: Stored properties
    let priorResult: Result
    
    // MARK: Computed properties
    var body: some View {
       
            
        VStack(spacing: 3) {
            // area
            Text("Area: \(priorResult.area)")
            
            //Divider
            Text("=================")
            // Bags needed
            Text("Bags Needed: \(priorResult.bagsNeeded)")
            
            //Divider
            Text("=================")
            
            //Cost
            Text("Cost of Concrete: \(priorResult.cost)$")
            
            
        }
                

            
            

        
        .padding(.horizontal)
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(priorResult: examplecalc)
    }
}
