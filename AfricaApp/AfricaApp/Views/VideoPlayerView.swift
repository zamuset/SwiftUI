//
//  VideoPlayerView.swift
//  AfricaApp
//
//  Created by Samuel Chavez on 24/06/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                , alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationTitle(videoTitle)
    }
}


#Preview {
  VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
}
