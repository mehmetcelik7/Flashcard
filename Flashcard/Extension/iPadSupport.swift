//
//  iPadSupport.swift
//  Flashcard
//
//  Created by mehmet Çelik on 23.03.2025.
//

import SwiftUI

extension UIDevice {
    static var  isIPad: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .pad
    }
    static var isIphone: Bool {
        UIDevice
            .current
            .userInterfaceIdiom == .phone
    }
}
