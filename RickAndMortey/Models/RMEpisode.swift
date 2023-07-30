//
//  RMEpisode.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/26/23.
//

import Foundation

struct RMEpisode: Codable {
     let id: Int
     let name: String
     let air_date: String
     let episode: [String]
     let url: String
     let created: String
}
