//
//  RMRequest.swift
//  RickAndMortey
//
//  Created by Sebastian Schulze on 7/27/23.
//

import Foundation
/// Obj that presents a single API Call
final class RMRequest {
    ///API Constance
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    ///Desired endpoint
    private let endpoint: RMEndpoint
    ///path components for API, if any
    private let pathComponents: Set<String>
    /// query arguments for api, if any
    private let queryParameters: [URLQueryItem]
    
    ///Constructed URL for the API Request in string Format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    /// Computed & constructed API Url
    public var url: URL? {
        return URL(string: urlString)
    }
    ///Desired http method
    public let httpMethod = "GET"
    
    //MARK: - Public
    
    ///Construct Request
    /// - Parameters:
    ///      - endpoint: target endpoint
    ///      - pathComponents: collection of path components
    ///      - queryParameters: collection of query parameters
    public init(endpoint: RMEndpoint,
         pathComponents: Set<String> = [],
         queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
