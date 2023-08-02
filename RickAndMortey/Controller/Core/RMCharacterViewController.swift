//
//  RMCharacterViewController.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/26/23.
//

import UIKit

/// Controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    private let chracterListView = CharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        setUpView()
      
    }
    private func setUpView() {
        view.addSubview(chracterListView)
        NSLayoutConstraint.activate([
            chracterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            chracterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            chracterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            chracterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        
        ])
    }
}
