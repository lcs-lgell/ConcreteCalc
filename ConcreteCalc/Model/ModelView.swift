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
    @State var desiredPrecision: Double = 2
    let cost = 9.71
    
    
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
    
    var area: Double? {
        guard let height = heightAsOptionalDouble, let width = widthAsOptionalDouble, let length = lengthAsOptionalDouble else {
            return nil
        }
        let volume = (height * width * length) * 0.000578704
        return volume
    }
    
    var bagsNeeded: Double {
            guard let area = area else {
                return 0
            }
            return (area) / 0.375
        }
    var Cost: Double {
        
        return (cost * bagsNeeded) * 1.13
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
                Text("length:")
                
            TextField("25.0", text: $length)
                .padding(.horizontal)
                .font(.title2)
                Text("Weight:")
                
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
            Text("*Volume in Cubic Feet")
                .font(.title2)
            Text("Volume: \(area ?? 0)")
            Text("Bag Needed: \(bagsNeeded.formatted(.number.rounded(rule: .up)))")
            
               
            
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
