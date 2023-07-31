//
//  RMEpisode.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/26/23.
//

import Foundation

/// Declaring the struct for episodes (answer from the api request)
struct RMEpisode: Codable {
     let id: Int
     let name: String
     let air_date: String
     let episode: [String] ///Array of strings
     let url: String
     let created: String
}
