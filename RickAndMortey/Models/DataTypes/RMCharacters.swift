//
//  RMCharacters.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/26/23.
//

import Foundation


struct RMCharacter: Codable {
         let id: Int
         let name: String
         let status: RMCharacterStatus
         let species: String
         let type: String
         let gender: RMGenderStatus
         let origin: RMOrigin
         let location: RMSingleLocation
         let image: String
         let episode: [String]
         let url: String
         let created: String
}

