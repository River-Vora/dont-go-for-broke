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
        TextField("Enter an expense:", text: $expense)
                    .padding() // add padding for better visuals
                    .textFieldStyle(.roundedBorder) // add style for better visuals
                    .foregroundColor(Color(red: 0.1333333333, green: 0.5450980392, blue: 0.1333333333)) // Forest Green
                    .fontWeight(.bold)
        Text("Your expense: \(expense)")
                    .padding()
                    .fontWeight(.semibold)
                    .foregroundStyle(.blue)
    }
}

#Preview {
    GrapherView()
}
