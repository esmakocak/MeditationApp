//
//  MeditationView.swift
//  Meditation
//
//  Created by Esma Koçak on 14.07.2024.
//

import SwiftUI

struct MeditationView: View {
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0){
            // MARK: Image
            
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            
            
            // MARK: Meditation Details
            ZStack{
                // MARK: Background
                
                Color(red: 24/255, green: 23/255, blue: 22/255 )
                
                VStack(alignment: .leading, spacing: 24) {
                    // MARK: Type & Duration
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Music")
                        
                        Text(meditationVM.meditation.duration.formatted() + " S")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    // MARK: Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    // MARK: Play Button
                    Button {
                        showPlayer = true
                    } label: {
                        Label("Play", systemImage: "play.fill")
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.vertical, 10)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(20)
                    }
                    
                    // MARK: Description
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
            .frame(height: UIScreen.main.bounds.height * 2 / 3)
        }
        .ignoresSafeArea()
        .fullScreenCover(isPresented: $showPlayer) {
            PlayerView()
        }
        
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
    }
}
