//
//  MockAPI.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/22/25.
//
//  A mock API service used for demo and preview environments.
//

import Foundation

/**
 A lightweight mock implementation of the `APIServiceProtocol`.
 
 This service provides placeholder data and simulates asynchronous
 operations without requiring a backend.
 */
struct MockAPI: APIServiceProtocol {
    
    /// Returns a demo greeting string asynchronously
    func fetchGreeting() async -> String {
        // Small delay to simulate network latency
        try? await Task.sleep(nanoseconds: 300_000_000)
        return "Hello from the LunaPal Demo API"
    }
}
