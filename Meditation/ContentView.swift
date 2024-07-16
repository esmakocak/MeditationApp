//
//  ContentView.swift
//  Meditation
//
//  Created by Esma Koçak on 15.07.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(Meditation.data) { meditation in
                NavigationLink(destination: MeditationView(meditationVM: MeditationViewModel(meditation: meditation))) {
                    HStack {
                        Image(meditation.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .cornerRadius(5.0)
                            
                        VStack(alignment: .leading) {
                            Text(meditation.title)
                                .font(.headline)
                        }
                    }
                    
                }
            }
            .navigationTitle("Tracks")
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AudioManager())
}

