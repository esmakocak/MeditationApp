//
//  MeditationViewModel.swift
//  Meditation
//
//  Created by Esma Koçak on 15.07.2024.
//

import Foundation

final class MeditationViewModel: ObservableObject {
    private(set) var meditation: Meditation
    
    init(meditation: Meditation){
        self.meditation = meditation
    }
}

struct Meditation: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data: [Meditation] = [
        Meditation(title: "1 Minute Relaxing Meditation", description: "Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breather", duration: 60, track: "meditation", image: "sea"),
        Meditation(title: "Ocean Waves Meditation", description: "Let the soothing sound clear your soul", duration: 145, track: "ocean", image: "stones"),
        Meditation(title: "Chill Sounds Meditation", description: "Relax with chill music. Clear your mind and focus on yourself", duration: 145, track: "chill", image: "woman"),
    ]

}
