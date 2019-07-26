//
//  Model.swift
//  Music_AudioFile
//
//  Created by Ngoc on 7/26/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit


struct MusicAudio: Codable {
    var id: Int
    var title: String
    var genre: String
    var artist: String
    var duration: Double
    var rate: Double
    var filename: String
}
