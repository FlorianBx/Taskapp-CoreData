//
//  HomeViewModel.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var content = ""
    @Published var date = Date()
    
    // For NewData Sheet...
    @Published var isNewData = false
    
    // Checking and Updating Date...
    let calendar = Calendar.current
    
    func checkDate() -> String {
        if calendar.isDateInToday(date) {
            return "Today"
        } else if calendar.isDateInTomorrow(date) {
            return "Tomorrow"
        }
        return "Other day"
    }
    
    func updateDate(value: String) {
        switch value {
        case "Today":
            date = Date()
        case "Tomorrow":
            date = calendar.date(byAdding: .day,value: 1, to: Date())!
        default:
            print("Default")
        }
    }
}
