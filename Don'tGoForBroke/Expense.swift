//
//  Expense.swift
//  Don'tGoForBroke
//
//  Created by Zen Vora on 1/15/26.
//

import SwiftData
import Foundation

@Model
final class Expense {
    var title: String
    var amount: Decimal
    var date: Date
    var category: String
    var isRecurring: Bool
    var notes: String?

    init(title: String,
         amount: Decimal,
         date: Date = .now,
         category: String = "General",
         isRecurring: Bool = false,
         notes: String? = nil) {
        self.title = title
        self.amount = amount
        self.date = date
        self.category = category
        self.isRecurring = isRecurring
        self.notes = notes
    }
}
