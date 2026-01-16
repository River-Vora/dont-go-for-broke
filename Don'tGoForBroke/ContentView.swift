//
//  ContentView.swift
//  Don'tGoForBroke
//
//  Created by Zen Vora on 1/9/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @State private var selectedTab = 0
    
    var body: some View {
#if os(macOS)
        NavigationStack {
            List {
                NavigationLink("Go to Want vs Need", value: "WantVNeed")
                NavigationLink("Go to Expense Grapher", value: "ExpenseGrapher")
            }
            .navigationDestination(for: String.self) { viewName in
                if viewName == "WantVNeed" {
                    WantVNeedView()
                } else {
                    GrapherView()
                }
            }
            .navigationTitle("Main Menu")
        }
#elseif os(iOS)
        TabView(selection: $selectedTab) {
            WantVNeedView()
                .tabItem {
                    Label("Want vs Need", systemImage: "list.bullet.rectangle")
                }
                .tag(0)

            GrapherView()
                .tabItem {
                    Label("Expense Grapher", systemImage: "chart.xyaxis.line")
                }
                .tag(1)
        }
#endif
    }
}

#Preview {
    ContentView()
}
