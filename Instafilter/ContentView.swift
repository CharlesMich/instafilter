//
//  ContentView.swift
//  Instafilter
//
//  Created by Charles Michael on 11/14/24.
//

import SwiftUI
import PhotosUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ContentView: View {
//    @State private var blurAmount = 0.0 {
//        didSet {
//            print("New value is \(blurAmount)")
//        }
//    }
   
    @State private var processedImage: Image?
    @State private var filterIntensity = 0.5
    @State private var selectedItem: PhotosPickerItem?
    @State private var currentFilter: CIFilter = CIFilter.sepiaTone()
    @State private var showingFilters = false
    
    let context = CIContext()
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                PhotosPicker(selection: $selectedItem) {
                if let processedImage {
                    processedImage
                        .resizable()
                        .scaledToFit()
                } else {
                    ContentUnavailableView("No Picture", systemImage: "photo.badge.plus", description: Text("Tap to import a photo"))
                }
            }
                .buttonStyle(.plain)
                .onChange(of: selectedItem, loadImage)
            Spacer()
            HStack {
                Text("Intensity")
                Slider(value: $filterIntensity)
//                onChange(of: filterIntensity, applyProcessing)
            }
            HStack {
                Button("Chage Filter", action: changeFilter)
                Spacer()
            }
        }
        .padding([.horizontal, .bottom])
        .navigationTitle("Instafilter")
        .confirmationDialog("Select a filter", isPresented: $showingFilters) {
            Button("Crystalize") { setFilter(CIFil)}
        }
        }
    }
    func changeFilter() {
        
    }
    func loadImage(){
        Task {
            guard let imageData = try await selectedItem?.loadTransferable(type: Data.self) else {return}
            guard let inputImage = UIImage(data: imageData) else { return }
            let beginImage = CIImage(image: inputImage)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            applyProcessing()
        }
    }
    
    func applyProcessing(){
        currentFilter.setValue(filterIntensity, forKey: kCIInputIntensityKey)
        
        guard let outputImage = currentFilter.outputImage else { return }
        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else { return }
        
        let uiImage = UIImage(cgImage:cgImage)
        processedImage = Image(uiImage: uiImage)
    }
    
    func setFilter(_filter: CIFilter){
        currentFilter = filter
        loadImage()
        
    }
}

#Preview {
    ContentView()
}


//VStack {
//    Image(systemName: "globe")
//        .imageScale(.large)
//        .foregroundStyle(.tint)
//    Text("Hello, world!")
//        .blur(radius: blurAmount)
//    Slider(value: $blurAmount)
//        .onChange(of: blurAmount){oldValue, newValue in
//            print("New value is \(newValue)")
//            
//        }
//    Button("Random Blur"){
//        blurAmount = Double.random(in: 0...20)
//    }
//}
//.padding()
