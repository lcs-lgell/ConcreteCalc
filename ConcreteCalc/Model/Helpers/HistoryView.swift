//
//  HistoryView.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-08.
//

import SwiftUI

struct HistoryView: View {
    @Binding var history: [Result]

    // MARK: Computed property
    var body: some View {
        VStack {
            
            Text("History")
                .font(.headline.smallCaps())
                .padding()
            
            List(history.reversed()) { somePriorResult in
                ResultView(priorResult: somePriorResult)
            }

        }

    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(history: Binding.constant(historyForPreviews))
    }
}
