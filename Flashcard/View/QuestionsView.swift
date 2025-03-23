//
//  QestionsView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 23.03.2025.
//

import SwiftUI

struct QuestionsView: View {
    @Environment(\.dismiss) var dismiss
    @State var questionModels: [QuestionModel]
    let topic: String
    let numberOfQuestions: Int
    @State private var currentQuestionIndex = 0
    var body: some View {
        
        ZStack {
            Color.gray.opacity(0.5).ignoresSafeArea()
            VStack {
                HeaderView(
                    topic: topic,
                    questionNumber: currentQuestionIndex,
                    NumberOfQuestions: numberOfQuestions,
                    colorBG: .gray,
                    colorFill: .purple,
                    dismissFunc: {dismiss()}
                )
                
                ZStack {
                    ForEach(0..<questionModels.count,id: \.self) { index in
                        let questionModel = questionModels[index]
                        
                        CardView(
                            question: questionModel.question,
                            imageName: questionModel.questionImageName,
                            answer: questionModel.answer,
                            answerImageName: questionModel.questionImageName,
                            removeCard: {
                                withAnimation {
                                    removeCard(at: index)
                                    
                                }
                            }
                        ) .opacity(index == questionModels.count-1 ? 1 : 0)
                       
                    }
                }
                .padding(.horizontal, UIDevice.isIPad  ? nil : 0)

            }
        }
    }
    
    func removeCard(at Index: Int) {
        
        questionModels.removeLast()
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex == numberOfQuestions {
        
                dismiss()
                               
        }
    }
}

#Preview {
    QuestionsView(
        questionModels: QuestionViewModel.countryQuestionModels,
        topic: "Countries",
        numberOfQuestions: QuestionViewModel.countryQuestionModels.count
    )
}
