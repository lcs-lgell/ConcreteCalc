//
//  OpeningView.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-06.
//

import SwiftUI

struct OpeningView: View {
    var body: some View {
        List {
            Text("Mortar Concrete")
            Text("Masonry Concrete")
            Text("Cement Concrete")
        }
        .navigationTitle("Types of Concrete")
    }
}

struct OpeningView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OpeningView()
        }
    }
}
