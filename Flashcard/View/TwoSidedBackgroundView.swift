//
//  TwoSidedBackgroundView.swift
//  Flashcard
//
//  Created by mehmet Çelik on 22.03.2025.
//

import SwiftUI

struct TwoSidedBackgroundView: View {
    let frontColor: Color
    let bacKColor: Color
    let opacity : CGFloat
    let isFrontUp: Bool
    
    var color: Color {
        isFrontUp ? frontColor: bacKColor
    }
    var body: some View {
        color
            .opacity(opacity)
            .ignoresSafeArea()
    }
}

#Preview {
    TwoSidedBackgroundView(
        frontColor: .blue,
        bacKColor: .red,
        opacity: 0.3,
        isFrontUp: true
    )
}
