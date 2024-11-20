//
//  ContentView1.swift
//  Instafilter
//
//  Created by Charles Michael on 11/15/24.
//

import SwiftUI

struct ContentView1: View {
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    
    var body: some View {
        Button("Hello World") {
            showingConfirmation.toggle()
        }
        .frame(width: 300, height: 300)
        .background(backgroundColor)
        .confirmationDialog("change background", isPresented: $showingConfirmation) {
            Button("Red") { backgroundColor = .red}
            Button("Green") { backgroundColor = .green}
            Button("Blue") { backgroundColor = .blue}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Select a new color")
        }
    }
}

#Preview {
    ContentView1()
}
