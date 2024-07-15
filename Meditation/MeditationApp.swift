//
//  MeditationApp.swift
//  Meditation
//
//  Created by Esma Koçak on 15.07.2024.
//

import SwiftUI

@main
struct MeditationApp: App {
    @StateObject var audioManager = AudioManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(audioManager)
        }
    }
}
