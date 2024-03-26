//
//  TestAppApp.swift
//  TestApp
//
//  Created by Orangeodc10 on 26/3/2024.
//

import SwiftUI

@main
struct TestAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
