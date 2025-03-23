//
//  FlashItemRow.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct FlashItemRow: View {
    let flashcarModel: FlashcardModel
    var imageSize:CGFloat {
        UIDevice.isIPad ? 150 : 60
    }
    var topicFont: Font {
        UIDevice.isIPad ? .largeTitle : .body
    }
    var topicWeight: Font.Weight {
        UIDevice.isIPad ? .bold : .semibold
    }
    
    var topicDescriptionFont: Font {
        UIDevice.isIPad ? .title : .caption
    }
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading,spacing: 10) {
                Text(flashcarModel.topic)
                    .font(topicFont)
                    .fontWeight(topicWeight)
                Text(flashcarModel.topicDescription)
                    .font(topicDescriptionFont)
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
