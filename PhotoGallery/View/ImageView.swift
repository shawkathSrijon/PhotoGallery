//
//  ImageView.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 29/6/21.
//

import SwiftUI

struct ImageView: View {
    var photos: [[PhotoModel]]
    var index: Int
    
    @Binding var showGallery: Bool
    
    var body: some View {
        HStack {
            if index < 2 {
                ForEach(photos[index]) { photo in
                    ZStack {
                        Text(photo.photo)
                            .foregroundColor(Color.gray)
                            .padding()
                            .frame(width: photos[index].count < 2 ? UIScreen.main.bounds.width * 0.82 : UIScreen.main.bounds.width * 0.40, height: 100)
                            .background(Color.gray.opacity(0.2))
                        if photos.count > 2 && index == 1 && photos[1].last?.photo == photo.photo {
                            let remainingPhotos = (((photos.count - 1) * 2) + (photos.last?.count ?? 1))
                                
                            Button(action: {
                                showGallery.toggle()
                            }) {
                                Text("+\(remainingPhotos - 4)")
                                    .foregroundColor(Color.white)
                                    .bold()
                                    .padding()
                                    .background(
                                        Circle()
                                            .fill(Color.black.opacity(0.5))
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(photos: [[PhotoModel(photo: "Photo1"), PhotoModel(photo: "Photo2")]], index: 0, showGallery: .constant(false))
    }
}
