//
//  QuestionModel.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import Foundation
import SwiftUI
struct QuestionModel : Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: ImageResource?
    let answer:String
    let answerImageName: ImageResource?
    
    
}

