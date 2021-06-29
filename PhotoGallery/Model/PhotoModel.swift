//
//  PhotoModel.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 29/6/21.
//

import Foundation

struct PhotoModel: Identifiable, Hashable {
    let id = UUID().uuidString
    let photo: String
}
