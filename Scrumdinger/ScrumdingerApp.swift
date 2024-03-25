//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by L X on 25/03/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
