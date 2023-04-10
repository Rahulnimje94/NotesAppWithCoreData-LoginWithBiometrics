//
//  LoginWithBiometricsApp.swift
//  LoginWithBiometrics
//
//  Created by Rahul Nimje on 09/04/23.
//

import SwiftUI

@main
struct LoginWithBiometricsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
