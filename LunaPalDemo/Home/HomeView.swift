//
//  HomeView.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/20/25.
//
// The main landing screen for the demo application.
// Displays a grid of high-level feature categories.
//

import SwiftUI

/**
 The primary home screen of the demo application.
 
 This view displays a set of feature categories (Health, Finance, etc.)
 and triggers navigation when the user selects one. It demonstrates a
 clean SwiftUI layout combined with Coordinator-driven routing.
 */
struct HomeView: View {
    
    /// Accesses the global coordinator responsible for navigation.
    @EnvironmentObject private var coordinator: AppCoordinator
    
    /// Defines the grid layout used for displaying category cards.
    private let gridColumns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 20) {
                
                headerSection
                
                LazyVGrid(columns: gridColumns, spacing: 16) {
                    ForEach(MockData.categories) { category in
                        CategoryCard(category: category)
                            .onTapGesture {
                                navigate(to: category)
                            }
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.top, 32)
        }
    }
    
    /**
     Returns a destination route for a given category.
     
     This maps high-level category objects to route cases in a clean and
     scalable way without hardcoding UI-level logic inside the coordinator.
     */
    private func navigate(to category: DemoCategory) {
        switch category.title {
        case "Health":
            coordinator.navigate(to: .health)
        case "Finance":
            coordinator.navigate(to: .finance)
        case "Productivity":
            coordinator.navigate(to: .productivity)
        case "Pets":
            coordinator.navigate(to: .pets)
        case "Education":
            coordinator.navigate(to: .education)
        default:
            break
        }
    }
    
    private var headerSection: some View {
        VStack (alignment: .leading, spacing: 8) {
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Choose a category to explore")
                .font(.headline)
                .foregroundStyle(.secondary)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(AppCoordinator())
}
