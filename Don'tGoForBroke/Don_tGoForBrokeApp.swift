//
//  Don_tGoForBrokeApp.swift
//  Don'tGoForBroke
//
//  Created by Zen Vora on 1/9/26.
//

import SwiftUI
import SwiftData

@main
struct Don_tGoForBrokeApp: App {
    var sharedModelContainer: ModelContainer = {
        // Initialize an empty SwiftData schema since no default Item model is used.
        // Add your @Model types to this array when you create them, e.g. [Expense.self, Category.self]
        let schema = Schema([Expense.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
