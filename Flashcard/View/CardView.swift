//
//  CardView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 23.03.2025.
//

import SwiftUI

struct CardView: View {
    @State private var rotate = true
    @State private var offset = CGSize.zero
    @State private var scaleFactor = 1.0
    
    let question: String
    let imageName: ImageResource?
    let answer: String
    let answerImageName: ImageResource?
    var removeCard: () -> Void
    
    var currentQuestion: String {
        rotate ? answer : question
    }
    var currentImageName: ImageResource? {
        rotate ? answerImageName : imageName
    }
    
    let cornerRadius = 10.0
    let lowerRectangleHeight = 80.0
    var body: some View {
        ZStack {
            TwoSidedBackgroundView(
                frontColor: .blue,
                bacKColor: .red,
                opacity: 0.3,
                isFrontUp: !rotate
            )
            VStack {
                Spacer()
                TextAndOptionalImageView(
                    text: currentQuestion,
                    imageName: currentImageName,
                    rotate: rotate
                )
                Spacer()
                Rectangle()
                    .fill(.gray.opacity(0.4))
                    .frame(height: lowerRectangleHeight)
                    .overlay(
                        Rectangle()
                            .stroke(.black.opacity(0.4))
                            .frame(height: lowerRectangleHeight)
                    )
            }
           
        }.rotation3DEffect(rotate ? .degrees(180) : .zero, axis: (x:0.0,y:1.0,z:0.0))
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(.gray,lineWidth: 1)
            )
            .clipShape(.rect(cornerRadius: cornerRadius))
            .padding()
    }
}

#Preview {
    CardView(
        question: "What is this city?",
        imageName: .bigBen,
        answer: "London, United Kingdom",
        answerImageName: nil,
        removeCard: {}
    )
}
