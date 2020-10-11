//
//  TaskAppApp.swift
//  TaskApp
//
//  Created by Florian Beaumont on 10/11/20.
//

import SwiftUI

@main
struct TaskAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
