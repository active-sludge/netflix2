//
//  Trailer.swift
//  Netflix2 (iOS)
//
//  Created by Huseyin Can Dayan on 2.01.2021.
//

import Foundation

struct Trailer: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
}
