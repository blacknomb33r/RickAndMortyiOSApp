//
//  RMEndpoint.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/27/23.
//

import Foundation
/// represents unique API Endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character // "spit out a string - character"
    /// Endpoint to get location info
    case location
    /// EP to get episode info
    case episode
}
