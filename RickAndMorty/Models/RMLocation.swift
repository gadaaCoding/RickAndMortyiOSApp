//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

