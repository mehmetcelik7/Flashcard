//
//  ContentView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct TopicView: View {
    var flashCardViewModel = FlashCardViewModel()
    
    
    var body: some View {
        NavigationStack {
          
              
                List(flashCardViewModel.flashCardModels) {
                    flashCardModel in
                    NavigationLink {
                        QuestionsView(
                            questionModels: flashCardModel.questionModels,
                            topic: flashCardModel.topic,
                            numberOfQuestions: flashCardModel.numberOfQuestions
                        )
                        .navigationBarBackButtonHidden()
                        .navigationBarTitleDisplayMode(.inline)
                        
                        Text(flashCardModel.topic)
                    } label: {
                        FlashItemRow(flashcarModel: flashCardModel)
                    }

                }
                .navigationTitle("Flashcards")
        }
        .padding()
    }
}

#Preview {
    TopicView()
}
