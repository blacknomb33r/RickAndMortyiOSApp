//
//  RMService.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/27/23.
//

import Foundation

/// Primary API Service obj to get RM Data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    /// Privatized constructor
    private init() {}
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///     - request: Request Instance
    ///     - type: The Type of obj we expect to get back
    ///     - completion: Callback with data or Error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expection type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        
    }
}
