//
//  FlashItemRow.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct FlashItemRow: View {
    let flashcarModel: FlashcardModel
    let imageSize = 60.0
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 10) {
                Text(flashcarModel.topic)
                    .font(.body)
                    .fontWeight(.semibold)
                Text(flashcarModel.topicDescription)
                    .font(.caption)
                    .fontWeight(.light)
            }
            Spacer()
            Image(flashcarModel.topicImageName)
                .resizable()
                .scaledToFill()
                .frame(width: imageSize, height: imageSize)
                .clipShape(.rect(cornerRadius: 10))
        }
    }
}

#Preview {
    FlashItemRow(flashcarModel: .init(
        topic: "Countries",
        topicDescription: "Explore geographical knowledge",
        topicImageName: .bigBen,
        questionModels: QuestionViewModel.countryQuestionModels
    ))
    .padding()
}
