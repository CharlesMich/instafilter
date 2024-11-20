//
//  ContentView5.swift
//  Instafilter
//
//  Created by Charles Michael on 11/19/24.
//

import SwiftUI

struct ContentView5: View {
    var body: some View {
        ShareLink(item: URL(string: "https://www.giftedbookstore.com")!, subject: Text("Lern swift here"), message: Text("Check out the 100 days of Swiftui"))
    }
}

#Preview {
    ContentView5()
}
