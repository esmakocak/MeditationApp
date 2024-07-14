//
//  PlaybackControlButton.swift
//  Meditation
//
//  Created by Esma Koçak on 14.07.2024.
//

import SwiftUI

struct PlaybackControlButton: View {
    var systemName: String = "play"
    var fontSize: CGFloat = 24
    var color: Color = .white
    var action: () -> Void
    
    
    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: systemName)
                .font(.system(size: fontSize))
                .foregroundColor(color)
        }

    }
}

#Preview {
    PlaybackControlButton(action: {})
        .preferredColorScheme(.dark)
}
