//
//  ContentView3.swift
//  Instafilter
//
//  Created by Charles Michael on 11/17/24.
//

import SwiftUI

struct ContentView3: View {
    var body: some View {
//        ContentUnavailableView("No Snippets", systemImage: "swift", description: Text("You dont have any snippets yet"))
        
        ContentUnavailableView{
            Label("No SNippets", systemImage: "swift")
        } description: {
            Text("You dont have any saved")
        } actions: {
            Button("Create snippet") {
                
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView3()
}
