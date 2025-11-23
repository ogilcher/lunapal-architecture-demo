//
//  AppCoordinator.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/22/25.
//
//  Demonstrates a simple Coordinator pattern for driving navigation
//  across modular SwiftUI feature areas.
//

import SwiftUI

/**
 High-level navigation routes for the demo application.
 
 These represent entry points into each module displayed in the sample.
 */
enum Route: Hashable {
    case home
    case health
    case finance
    case productivity
    case pets
    case education
}

/**
 A lightweight coordinator responsible for managing navigation state
 across the demo application.
 
 This centralizes routing logic and view construction, keeping the
 SwiftUI layout clean and modular.
 */
final class AppCoordinator: ObservableObject {
    
    /// The currently active navigation route.
    @Published var route: Route = .home
    
    /**
     Updates navigation to a new route.
     
     - Parameter route: The target route to navigate to.
     */
    func navigate(to route: Route) {
        self.route = route
    }
    
    /**
     Returns the destination view for a given route.
     
     - Parameter route: The route whose destination view should be shown.
     - Returns: A SwiftUI view matching the selected route.
     */
    @ViewBuilder
    func destinationView(for route: Route) -> some View {
        switch route {
        case .home:             HomeView()
        case .health:           AnyView(Text("Health Home View"))
        case .finance:          AnyView(Text("Finance Home View"))
        case .productivity:     AnyView(Text("Productivity Home View"))
        case .pets:             AnyView(Text("Pets Home View"))
        case .education:        AnyView(Text("Education Home View"))
        }
    }
}
