//
//  PlayerView.swift
//  Meditation
//
//  Created by Esma Koçak on 14.07.2024.
//

import SwiftUI

struct PlayerView: View {
    var meditationVM: MeditationViewModel
    @State private var value: Double = 0.0
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea()
            
            // MARK: Blur View
            
            Rectangle()
                .background(.thinMaterial)
                .opacity(0.25)
                .ignoresSafeArea()
            
            VStack(spacing: 32){
                // MARK: Dismiss Button
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 36))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                
                // MARK: Title
                Text(meditationVM.meditation.title)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                // MARK: Playback
                VStack(spacing: 5){
                    // MARK: Playback Timeline
                    
                    Slider(value: $value, in: 0...60)
                        .accentColor(.white)
                    
                    // MARK: Playback Time
                    HStack {
                        Text("0:00")
                        Spacer()
                        Text("1:00")
                    }
                    .font(.caption)
                    .foregroundColor(.white)
                    
                }
                
                // MARK: Playback Controls
                
                HStack {
                    // MARK: Repeat Button
                    PlaybackControlButton(systemName: "repeat") {
                        
                    }
                    
                    Spacer()
                    
                    // MARK: Backward Button
                    PlaybackControlButton(systemName: "gobackward.10") {
                        
                    }
                    
                    Spacer()


                    // MARK: Play/Pause Button
                    PlaybackControlButton(systemName: "play.circle.fill", fontSize: 44) {
                        
                    }

                    Spacer()

                    // MARK: Forward Button
                    PlaybackControlButton(systemName: "goforward.10") {
                        
                    }

                    Spacer()

                    // MARK: Stop Button
                    PlaybackControlButton(systemName: "stop.fill") {
                        
                    }

                }
                
            }
            .padding(20)
        }
        .onAppear{
            AudioManager.shared.startPlayer(track: meditationVM.meditation.track)
        }
    }
}


struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(meditationVM: MeditationViewModel(meditation: Meditation.data))
    }
}
