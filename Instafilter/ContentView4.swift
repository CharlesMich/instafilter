//
//  ContentView4.swift
//  Instafilter
//
//  Created by Charles Michael on 11/18/24.
//

import SwiftUI
import PhotosUI

struct ContentView4: View {
    @State private var pickerItem: PhotosPickerItem?
    @State private var pickerItems = [PhotosPickerItem]()
//    @State private var selectedImage: [Image]()
    
    var body: some View {
        VStack {
//            PhotosPicker("Select images", selection: $pickerItems, matching: .images)
////            ScrollView {
////                ForEach(0..<selectedImages.count, id: \.self) { i in
////                    selectedImages[i]
////                        .resizable()
////                        .scaledToFit()
////                }
//            }
//        }
//       
//        .onChange(of: pickerItems) {
//            Task {
//                selectedImage.removeAll()
//                for item in pickerItems {
//                    if let loadedImage = try await item.loadTransferable(type: Image.self){
//                        selectedImages.append(loadedImage)
//                    }
//                }
//                pickerItem?.loadTransferable(type: Image.self)
//            }
        }
    }
}

#Preview {
    ContentView4()
}
