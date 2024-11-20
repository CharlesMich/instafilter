//
//  ContentView6.swift
//  Instafilter
//
//  Created by Charles Michael on 11/19/24.
//
import StoreKit
import SwiftUI

struct ContentView6: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        Button("Leave a review") {
            requestReview()
        }
    }
}

#Preview {
    ContentView6()
}
