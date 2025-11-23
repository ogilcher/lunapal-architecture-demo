//
//  DIContainer.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/22/25.
//
//  A lightweight dependenjy injection container used to provided
//  shared services throughout the demo application.
//

import Foundation

/**
 A protocol defining the abstract interface for API services.
 
 Using a protocol allows the application to swap out concrete
 implementations (e.g., mock, live, or test versions) without
 changing the UI layer.
 */
protocol APIServiceProtocol {
    /// Fetches a demo string asynchronously.
    func fetchGreeting() async -> String
}

/**
 A simple dependency injection container responsible for
 centralizing service initialization and shared dependencies.
 
 This pattern helps keep modules modular and testable by
 avoiding direct construction of service implementations inside views.
 */
final class DIContainer {
    
    /// The shared singleton instance.
    static let shared = DIContainer()
    
    /// The API service used across the demo application.
    let apiService: APIServiceProtocol
    
    /**
     Initalizes a dependency container with the provided services.
     
     - Parameter apiService: The API service implementation to use.
     - Note: Defaults to `MockAPI()` for the demo environment.
     */
    init(
        apiService: APIServiceProtocol = MockAPI()
    ) {
        self.apiService = apiService
    }
}
