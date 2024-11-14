//
//  ContentView.swift
//  Instafilter
//
//  Created by Charles Michael on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var blurAmount = 0.0 {
        didSet {
            print("New value is \(blurAmount)")
        }
    }
   
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .blur(radius: blurAmount)
            Slider(value: $blurAmount)
                .onChange(of: blurAmount){oldValue, newValue in
                    print("New value is \(newValue)")
                    
                }
            Button("Random Blur"){
                blurAmount = Double.random(in: 0...20)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
