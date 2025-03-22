//
//  FlashcardModel.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import Foundation

struct FlashcardModel: Identifiable {
    let id = UUID()
    let topic: String
    let topicDescription: String
    let topicImageName: String
    let questionModels: [QuestionModel]
    let numberOfQuestions: Int
    
}
