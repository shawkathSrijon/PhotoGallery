//
//  Array.swift
//  PhotoGallery
//
//  Created by Simec Sys Ltd. on 29/6/21.
//

import Foundation

extension Array {
    func divideIntoGroups(of size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min(($0 + size), count)])
        }
    }
}
