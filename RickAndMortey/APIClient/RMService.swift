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
    ///     - completion: Callback with data or Error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
