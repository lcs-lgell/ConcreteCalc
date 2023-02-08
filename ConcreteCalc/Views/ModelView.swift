//
//  ModelView.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-07.
//

import SwiftUI

struct ModelView: View {
    //MARK: Stored Properties
    @State var height: String = ""
    @State var width: String = ""
    @State var length: String = ""
    
    
    
    
    //MARK: Computed Properties
    //convert height
    var heightAsOptionalDouble: Double? {
        guard let unwrappedheight = Double(height) else {
            // Could not unwrap – invalid input
            return nil
        }
        return unwrappedheight
    }
        
                
    //convert height
    var widthAsOptionalDouble: Double? {
        guard let unwrappedwidth = Double(width) else {
                    // Could not unwrap – invalid input
                    return nil
                }
        return unwrappedwidth
    }
                
    //convert length
    var lengthAsOptionalDouble: Double? {
        guard let unwrappedlength = Double(length) else {
                    // Could not unwrap – invalid input
                    return nil
                }
        return unwrappedlength
    }
    
    var result: (area: String, bagsNeeded: String, cost: String) {
        guard let height = heightAsOptionalDouble, let width = widthAsOptionalDouble, let length = lengthAsOptionalDouble else {
            return ("Incorrect Values", "", "")
        }
        let area = (height * width * length) * 0.000578704
        let bagsNeeded = area / 0.375
        let cost = (bagsNeeded * 9.71) * 1.13
        return ("\(area.formatted(.number.precision(.fractionLength(1))))", "\(bagsNeeded.formatted(.number.rounded(rule: .up, increment: 1)))", "\(cost.formatted(.number.precision(.fractionLength(1))))")
    }
        
    var body: some View {
        ScrollView {
            //Image which will be variable
            Image("Mortar")
                .resizable()
                .scaledToFit()
                .padding()
            
        // Test to explain user it is in inches
            Text("*Measurements in inches")
                .font(.title2)
            
            HStack(spacing: -10) {
                Text("Height:")
                
            TextField("8.0", text: $height)
                .padding(.horizontal)
                .font(.title2)
                Text("Length:")
                
            TextField("25.0", text: $length)
                .padding(.horizontal)
                .font(.title2)
                Text("Width:")
                
            TextField("25.0", text: $width)
                .padding(.horizontal)
                .font(.title2)
            }
            .padding()
            //image for box
            Image("Rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            //write out anwsers for area, amount of bags, and estimated price
            Text("*Area in Cubic Feet")
                .font(.title2)
            Text("Area: \(result.area)")
            Text("Bag Needed: \(result.bagsNeeded)")
            Text("Cost of all Bags: \(result.cost) $")
            
               
            
        }
        .navigationTitle("Mortar Concrete")
    }
}

struct ModelView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ModelView()
        }
    }
}
