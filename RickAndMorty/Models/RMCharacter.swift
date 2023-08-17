//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import Foundation


struct RMCharacter: Codable {
    let id: Int
    let name: String
    let status: RMStatus
    let species: String
    let type: String?
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}

struct RMOrigin: Codable {
    let name: String
    let url: String
}

struct RMSingleLocation: Codable {
    let name: String
    let url: String
}

enum RMStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknown = "unknown"
}

enum RMCharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
