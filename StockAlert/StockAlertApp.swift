//
//  StockAlertApp.swift
//  StockAlert
//
//  Created by Zachary Johnson on 9/24/22.
//

import SwiftUI

@main
struct StockAlertApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
