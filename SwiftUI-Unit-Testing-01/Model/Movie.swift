//
//  Movie.swift
//  FilmFest
//
//  Created by Brian Bansenauer on 4/22/19.
//  Copyright © 2019 Author. All rights reserved.
//

import Foundation

public struct Movie : Identifiable {
    public let id = UUID()
    public let title: String
    public let releaseDate: String?
    public var shown:Bool = false
    
    public init(title: String, releaseDate: String? = nil, shown: Bool? = false) {
        self.title = title
        self.releaseDate = releaseDate
        self.shown = shown ?? false
    }
}
