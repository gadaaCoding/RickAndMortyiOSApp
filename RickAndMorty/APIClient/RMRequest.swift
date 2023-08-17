//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import Foundation

final class RMRequest {
    private let endpoint: RMEndpoint
    private let queryItems: [URLQueryItem]
    
    init(endpoint: RMEndpoint, queryItems: [URLQueryItem]) {
        self.endpoint = endpoint
        self.queryItems = queryItems
    }
    
    func urlRequest() -> URLRequest {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "rickandmortyapi.com"
        components.path = "/api/\(endpoint.rawValue)"
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL components: \(components)")
        }
        
        return URLRequest(url: url)
    }
    
}

