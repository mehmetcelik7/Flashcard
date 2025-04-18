//
//  HeaderView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let NumberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    let barWidth = 10.0
    
    var percentage: CGFloat {
        CGFloat(questionNumber) / CGFloat(NumberOfQuestions)
    }
    let unicodeX = "\u{2715}"
    
    var dismissFunc: () -> Void
    
    var topicFont: Font {
        UIDevice.isIPad ? .largeTitle : .body
    }
    
    var  numQuestionsText: String {
        "\(questionNumber) out of \(NumberOfQuestions)"
    }
    
    var numQuestionsFont: Font {
        UIDevice.isIPad ? .largeTitle : .caption
    }
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text(topic)
                  
                    .font(topicFont)
                
                Spacer()
                
                Text(numQuestionsText)
                    .font(numQuestionsFont)
                 

            }.fontWeight(.bold)
            HStack {
                Button(
                    action: {
                        dismissFunc()
                    },
                    label: {
                        Text(unicodeX)
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundStyle(colorBG)
                    
                    })
                
                FillBarView(
                    barWidth: barWidth,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: percentage
                )
                

            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView(
        topic: "Countries",
        questionNumber: 3,
        NumberOfQuestions: 10,
        colorBG: .gray,
        colorFill: .purple,
        dismissFunc: { }
    )
   
}
