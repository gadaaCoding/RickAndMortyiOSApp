//
//  RMService.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import Foundation


/// RMService is a singleton class that handles all the network requests
final class RMService {
    static let shared = RMService()
    private init() {}
    
    
    //use async and await to fetch data from api
    public func execute<T: Codable>(_ request: RMRequest, expecting: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}

