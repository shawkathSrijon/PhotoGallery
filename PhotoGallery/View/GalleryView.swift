//
//  GalleryView.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 29/6/21.
//

import SwiftUI

struct GalleryView: View {
    var photos: [[PhotoModel]]
    
    var body: some View {
        VStack {
            ForEach(photos.indices, id: \.self) { index in
                HStack {
                    ForEach(photos[index]) { photo in
                        ZStack {
                            Text(photo.photo)
                                .foregroundColor(Color.gray)
                                .padding()
                                .frame(width: photos[index].count < 2 ? UIScreen.main.bounds.width * 0.82 : UIScreen.main.bounds.width * 0.40, height: 100)
                                .background(Color.gray.opacity(0.2))
                        }
                    }
                }
            }
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(photos: [[PhotoModel(photo: "")]])
    }
}
