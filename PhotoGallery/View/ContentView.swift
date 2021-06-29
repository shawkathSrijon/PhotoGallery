//
//  ContentView.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 28/6/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var vm = PhotoViewModel()
    @State private var showGallery: Bool = false

    var body: some View {
        let photos = vm.photos.divideIntoGroups(of: 2)
        
        return NavigationView {
            VStack {
                ForEach(photos.indices, id: \.self) { index in
                    ImageView(photos: photos, index: index, showGallery: $showGallery)
                }
            }
            .frame(width: UIScreen.main.bounds.width)
            .background(
                NavigationLink(
                    destination: GalleryView(photos: photos)
                        .navigationBarTitle("Gallery", displayMode: .inline),
                    isActive: $showGallery,
                    label: {
                        EmptyView()
                    })
            )
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
