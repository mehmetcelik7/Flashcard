//
//  FlashcardModel.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import Foundation
import SwiftUI

struct FlashcardModel: Identifiable {
    let id = UUID()
    let topic: String
    let topicDescription: String
    let topicImageName: ImageResource
    let questionModels: [QuestionModel]
    var numberOfQuestions: Int {
        questionModels.count
    }
    
}
