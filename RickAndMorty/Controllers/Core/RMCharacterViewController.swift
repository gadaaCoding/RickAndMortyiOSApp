//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Sherefudin Hussein on 17.08.2023.
//

import UIKit

final class RMCharacterViewController: UIViewController {

    override func viewDidLoad()  {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Characters"
        
        //fetch characters
        let request = RMRequest(
            endpoint: .character,
            queryItems: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        print(request.url!)
        
        //use async and await to fetch data from api
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success(let response):
                print(response)
            case .failure(let error):
                print(error)
            }
        }
    }
}
