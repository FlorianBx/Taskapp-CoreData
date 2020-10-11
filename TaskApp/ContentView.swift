//
//  ContentView.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    init() {
        UITextView.appearance().backgroundColor = .clear
    }

    var body: some View {
        HomeView()
    }
}
