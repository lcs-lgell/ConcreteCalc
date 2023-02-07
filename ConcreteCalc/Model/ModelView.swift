//
//  ModelView.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-07.
//

import SwiftUI

struct ModelView: View {
    //MARK: Stored Properties
    @State var height = Double()
    @State var width = Double()
    @State var length = Double()
    
    //MARK: Computed Properties
    
    
    var body: some View {
        VStack {
            Image("Mortar")
                .resizable()
                .scaledToFit()
                .padding()
            HStack {
                TextField(50.00, text: $height)
            }
               
            
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
