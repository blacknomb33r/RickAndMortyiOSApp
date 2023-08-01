//
//  RMCharacterViewController.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/26/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        // Do any additional setup after loading the view.
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "Status", value: "Alive")
            ]
        )
        print(request.url)
        
        RMService.shared.execute(request, expection: RMCharacter.self) { result in
            
        }
        
        
    }
}
