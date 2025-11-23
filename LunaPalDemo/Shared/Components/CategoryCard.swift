//
//  CategoryCard.swift
//  lunapal-architecture-demo
//
//  Created by Oliver Gilcher on 11/23/25.
//
//  A reusable SwiftUI component representing a feature category card
//  in the demo application's home screen.

import SwiftUI

/**
 A visual card used to represent a high-level feature category.
 
 Each card displays an icon and title, and adapts its presentation
 for both light and dark mode. This component helps demonstrate
 reusable design patterns and shared UI elements in SwiftUI.
 */
struct CategoryCard: View {
    
    /// The category displayed by this card.
    let category: DemoCategory
    
    var body: some View {
        VStack (spacing: 12) {
            Image(systemName: category.systemImage)
                .font(.system(size: 36))
                .foregroundStyle(.blue)
            
            Text(category.title)
                .font(.headline)
                .foregroundStyle(.primary)
        }
        .frame(maxWidth: .infinity, minHeight: 120)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.secondarySystemBackground))
        )
        .shadow(color: Color.black.opacity(0.05), radius: 4, x: 0, y: 2)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .strokeBorder(Color(.separator), lineWidth: 0.4)
        )
    }
}

#Preview {
    CategoryCard(category: DemoCategory(title: "Health", systemImage: "heart.fill"))
        .padding()
}
