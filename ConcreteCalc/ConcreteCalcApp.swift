//
//  ConcreteCalcApp.swift
//  ConcreteCalc
//
//  Created by Leon Gell on 2023-02-06.
//

import SwiftUI

@main
struct ConcreteCalcApp: App {
    //MARK: Stored Properties
    @State var history: [Result] = []
    var body: some Scene {
        WindowGroup {
            TabView {
                ModelView(history: $history)
                    .tabItem {
                        Image(systemName: "rectangle.split.2x2.fill")
                        Text("Calculate")
                    }
                
                HistoryView(history: $history)
                    .tabItem {
                        Image(systemName: "clock.fill")
                        Text("History")
                    }
            }
            
            
        }
    }
}
