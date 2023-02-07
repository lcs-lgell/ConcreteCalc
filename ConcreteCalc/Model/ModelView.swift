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

                // Return the unwrapped value
                return unwrappedheight
    }
    //convert height
    var widthAsOptionalDouble: Double? {
        guard let unwrappedwidth = Double(width) else {
                    // Could not unwrap – invalid input
                    return nil
                }

                // Return the unwrapped value
                return unwrappedwidth
    }
    //convertlength
    var lengthAsOptionalDouble: Double? {
        guard let unwrappedlength = Double(length) else {
                    // Could not unwrap – invalid input
                    return nil
                }

                // Return the unwrapped value
                return unwrappedlength
    }
    
    var body: some View {
        VStack {
            Image("Mortar")
                .resizable()
                .scaledToFit()
                .padding()
            HStack(spacing: -10) {
                Text("Height:")
            TextField("25.0", text: $height)
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
