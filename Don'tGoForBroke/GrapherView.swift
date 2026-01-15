//
//  GrapherView.swift
//  Don'tGoForBroke
//
//  Created by Zen Vora on 1/14/26.
//

import SwiftUI
import Charts
import SwiftData

struct GrapherView: View {
    @State private var expense: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            TextField("Enter an expense:", text: $expense)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(Color(red: 0.1333333333, green: 0.5450980392, blue: 0.1333333333)) // Forest Green
                .fontWeight(.bold)
            
            Text("Your expense: \(expense)")
                .fontWeight(.semibold)
                .foregroundStyle(.blue)
                .padding()
            
            // Placeholder for a future chart
            // Chart(...) { ... }
            //     .frame(height: 240)
            //     .padding(.top, 8)
        }
        .padding()
        .navigationTitle("Expense Grapher")
    }
}

#Preview {
    GrapherView()
}
