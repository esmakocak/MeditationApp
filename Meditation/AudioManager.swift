//
//  AudioManager.swift
//  Meditation
//
//  Created by Esma Koçak on 15.07.2024.
//

import Foundation
import AVKit

final class AudioManager {
    static let shared = AudioManager()
    
    var player: AVAudioPlayer?
    
    func startPlayer(track: String) {
        guard let url = Bundle.main.url(forResource: track,withExtension: "mp3") else {
            print("Resource not found: \(track)")
            return
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Fail to initialize player", error)
        }
    }
}
    
