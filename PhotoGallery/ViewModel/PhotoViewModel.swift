//
//  PhotoViewModel.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 29/6/21.
//

import Foundation

class PhotoViewModel: ObservableObject {
    @Published var photos: [PhotoModel] = [
        PhotoModel(photo: "Photo1"),
        PhotoModel(photo: "Photo2"),
        PhotoModel(photo: "Photo3"),
        PhotoModel(photo: "Photo4"),
        PhotoModel(photo: "Photo5"),
        PhotoModel(photo: "Photo6"),
        PhotoModel(photo: "Photo7"),
        PhotoModel(photo: "Photo8"),
        PhotoModel(photo: "Photo9")
    ]
}
