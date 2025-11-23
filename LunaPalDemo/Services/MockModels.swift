//
//  MockModels.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/22/25.
//
//  Lightweight model structures used for mocking data in the demo
//  application. These models do not represent real LunaPal schemas.
//

import Foundation

/**
 A generic model representing a category displayed on the home screen.
 
 This encapsulates basic information needed to show a feature area
 such as Health, Finance, or Productivity.
 */
struct DemoCategory: Identifiable, Hashable {
    
    /// Unique identifier for the category.
    let id = UUID()
    
    /// The display name of the category.
    let title: String
    
    /// The system image name used as an icon.
    let systemImage: String
}

/**
 A collection of static mock data used across the demo app.
 
 These samples help drive previews and simulate lightweight data flow
 through the architecture without requiring external dependencies.
 */
enum MockData {
    
    /// Demo categories representing each module in the app.
    static let categories: [DemoCategory] = [
        DemoCategory(title: "Health",           systemImage: "heart.fill"),
        DemoCategory(title: "Finance",          systemImage: "dollarsign.circle.fill"),
        DemoCategory(title: "Productivity",     systemImage: "checkmark.circle.fill"),
        DemoCategory(title: "Pets",             systemImage: "pawprint.fill"),
        DemoCategory(title: "Education",        systemImage: "book.fill")
    ]
}
