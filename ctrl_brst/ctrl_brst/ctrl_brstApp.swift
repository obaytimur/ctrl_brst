//
//  ctrl_brstApp.swift
//  ctrl_brst
//
//  Created by Oğulcan Baytimur on 23/03/2024.
//

import SwiftData
import SwiftUI

@main
struct ctrl_brstApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Examination.self)
    }
}
