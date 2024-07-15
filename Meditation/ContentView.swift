//
//  ContentView.swift
//  Meditation
//
//  Created by Esma Koçak on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
    }
}

#Preview {
    ContentView()
        .environmentObject(AudioManager())
}
