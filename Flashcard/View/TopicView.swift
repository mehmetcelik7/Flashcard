//
//  ContentView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct TopicView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(.imgPeaceful1)
                    .resizable()
                    .frame(width: 200,height: 200)
                    .clipShape(.rect(cornerRadius: 15))
                    .shadow(radius: 3)
                
            }
            .navigationTitle("Flashcards")
        }
        .padding()
    }
}

#Preview {
    TopicView()
}
