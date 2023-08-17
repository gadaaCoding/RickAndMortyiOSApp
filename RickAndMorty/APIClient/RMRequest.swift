//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import Foundation

final class RMRequest {
    private struct Constants {
        static let baseURL = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    private let pathComponents: Set<String>
    private let queryItems: [URLQueryItem]
    
    //create a computed property for url?
    private var urlString: String {
        var string = Constants.baseURL
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryItems.isEmpty {
            string += "?"
            string += queryItems.compactMap({
                guard let value = $0.value else { return nil }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
        }
        
        return string
    }
    
    /// create a computed property for url
    
    public var url: URL? {
        return URL(string: urlString)
    
    }
    
    public let httpMethod: String = "GET"
    
    
    
    /// create an initializer for endpoint, pathComponents, and queryItems
    public init(endpoint: RMEndpoint, pathComponents: Set<String> = [], queryItems: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryItems = queryItems
    }
    
}

